from django.shortcuts import render
from django.contrib.auth import authenticate, login

from backend.models import OrderStatus, Profile, AddressBook, Blog, Instagram, NavigationMenu, NavigationSubMenu, Order, OrderItem, Payment, ProductImages, ProductOption, Products, Rating, SeasionSale, Sliders
from .forms import CheckoutForm, RatingForm, SignUpForm
from django.http import HttpResponse, HttpResponseRedirect, request
import json
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.utils import timezone
from django.core.exceptions import ObjectDoesNotExist
from django.views.decorators.csrf import csrf_exempt
from django.conf import settings
from django.http.response import JsonResponse
from django.views.generic import CreateView, UpdateView, DeleteView, TemplateView, ListView, View, DetailView
from django.urls import reverse
import stripe
from django.core.mail import send_mail

stripe.api_key = settings.STRIPE_SECRET_KEY

from django.core.mail import EmailMessage
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string

from nfc.settings import EMAIL_ADMIN

def sendMail(orderId=1):
    print('sending.... in............')
    
    order = Order.objects.get(pk=orderId)
    
    context = {
        'order': order,
    }

    
    message = render_to_string("frontend/email_template.html", context)
   
    msg = EmailMultiAlternatives(
        subject="Order confirmation from NFC LIVING",
        from_email=EMAIL_ADMIN,
        to=[order.checkout_address.email], 
        body='Order confirmation', 
        reply_to=[EMAIL_ADMIN]
        )
    msg.attach_alternative(message, "text/html")
    msg.send()
    return HttpResponse('sent')



def customerLogin(request):   
     
    print('sending....')
    nextRedirect = False
    if request.GET.get('next'):
        nextRedirect = request.GET.get('next')
    return render(request, 'frontend/login.html', {'nextRedirect': nextRedirect})




# Create your views here.
def loginUser(request):

    email= request.POST.get('email')
    password = request.POST.get('password')
    user = authenticate(username=email, password=password)
    if user is not None:
        if user.is_active:
            login(request, user)
            return HttpResponse(json.dumps({"message": "Success"}),content_type="application/json")
        else:
            return HttpResponse(json.dumps({"message": "inactive"}), content_type="application/json")
    else:
        return HttpResponse(json.dumps({"message": "invalid"}),content_type="application/json")
    return HttpResponse(json.dumps({"message": "denied"}),content_type="application/json")

def signup(request):
    # if request.user.is_authenticated():
    # 	return redirect('/')
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')
        if email:
            data = {'username':username, 'email':email, 'password2':password2, 'password1':password1}
        else:
            data = {'username':username, 'password2':password2, 'password1':password1}
        form = SignUpForm(data = data)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active = True
            user.save()
            return HttpResponse(json.dumps({"message": "Success"}), content_type="application/json")
        else:
            return HttpResponse(json.dumps({"message":form.errors}),content_type="application/json")
    else:
        form = SignUpForm()
    return HttpResponse(json.dumps({"message": "Denied"}),content_type="application/json")

def userprofile(request):
    profile = Profile.objects.get(user=request.user.pk)    
    context = {
        'profile': profile
    }
    return render(request, 'frontend/Profile.html', context)

def index(request):
    subMenu = NavigationSubMenu.objects.filter(status='0')
    seasionSale = SeasionSale.objects.all()
    
    parentMenues = NavigationMenu.objects.filter(has_products=True)
    # print([pk['pk'] for pk in categories.values('pk')])
    # subMenuesByParentMenu = NavigationSubMenu.objects.filter(parent_menu__in=[pk['pk'] for pk in parentMenues.values('pk')]).select_related('parent_menu')
    
    products = []
    subCategories = []
    parentCategories = []
    # subMenu = NavigationSubMenu.objects.filter(status='0')
    for parentCate in parentMenues:
        subMenuesByParentMenu = NavigationSubMenu.objects.values('pk').filter(parent_menu=parentCate.pk)
        products = Products.objects.filter(
            sub_category__in=[pk['pk'] for pk in subMenuesByParentMenu.values('pk')],
            category=parentCate.pk
        ).select_related('sub_category')[:6]
        # for subcate in subMenuesByParentMenu:
        #     pros = Products.objects.filter(sub_category=subcate.pk)
        #     for i, productObj in enumerate(pros):
        #         products.append(productObj)
        #         if i > 1:
        #             break

        # subCategories.append({
        #     # 'subcate': subcate,
        #     'products': products
        # })

        parentCategories.append({
            'parentCate': parentCate,
            'subCategoriesAndProducts': subCategories,
            'products': products
        })

    print('================================')
    print(parentCategories)
    print('================================')
    # SLIDERS
    sliders = Sliders.objects.filter(status=True)

    # Instagram
    instagram = Instagram.objects.all()
    context = {
        'subMenu': subMenu,
        'sliders': sliders,
        'seasionSale': seasionSale,
        'parentCategories': parentCategories,
        'instagram': instagram
    }
    return render(request, 'frontend/index.html', context)

def products(request, subCateSlug):
    products = []
    sub_category = NavigationSubMenu.objects.get(sub_menu_slug=subCateSlug)
    all_sub_categories = NavigationSubMenu.objects.filter(parent_menu=sub_category.parent_menu)
    productQuerySet = Products.objects.filter(sub_category=sub_category)

    productQuerySetObj = Paginator(productQuerySet, 10) 
    page_number = request.GET.get('page')
    page_obj = productQuerySetObj.get_page(page_number)
  
    for productObj in page_obj:
        images = ProductImages.objects.filter(product=productObj)
        products.append({
            'details': productObj,
            'images': images
        })

    # GET ALL SIZES
    sizes = set(map(lambda x: x['size'],Products.objects.values('size').all()))
    context = {
        'products': products,
        'productQuerySetObj': productQuerySetObj,
        'page_obj': page_obj,
        'all_sub_categories': all_sub_categories,
        'subCateSlug': subCateSlug,
        'sizes': sizes
    
    }
    return render(request, 'frontend/products.html', context)

def getProductByAjax(request):
    filterData = request.GET.get('filterData')    

    subCateSlug = request.GET.get('slug')
    # return HttpResponse(subCateSlug)
    page_number = request.GET.get('page')
    products = []
    sub_category = NavigationSubMenu.objects.get(sub_menu_slug=subCateSlug)
    productQuerySet = Products.objects.filter(sub_category=sub_category)

    if filterData:
        form_data_dict = {}
        form_data_list = filterData.split('&')
        for field_Values in form_data_list:
            form_data_dict[field_Values.split('=')[0]] = field_Values.split('=')[1]

        discountFilter = form_data_dict.get('group_dicount')
        sizeFilter = form_data_dict.get('size')
        priceFilter = form_data_dict.get('range')
        
        # Discoint Filter
        if discountFilter != '':
            if discountFilter == 'price-discount':
                productQuerySet = productQuerySet.filter(has_discount=True)
            if discountFilter == 'price-regular':
                productQuerySet = productQuerySet.filter(has_discount=False)
            else:
                productQuerySet = productQuerySet.filter(sub_category=sub_category)

        # Size Filter
        if sizeFilter != 'all':
            productQuerySet = productQuerySet.filter(size=sizeFilter)
        
        if priceFilter:
            price = priceFilter.split('%3B')
            productQuerySet = productQuerySet.filter(price__gte=price[0], price__lte=price[1])
        # print('========================')
        # print(form_data_dict)
        # print('========================')


    productQuerySetObj = Paginator(productQuerySet, 10) 
    page_number = request.GET.get('page')
    page_obj = productQuerySetObj.get_page(page_number)

    for product in page_obj:
        products.append({
            'active_feature': product.active_feature,
            'category_id': product.category_id,
            'discoun_price': product.discoun_price,
            'has_discount': product.has_discount,
            'id': product.id,
            'name': product.name,
            'price': product.price,
            'product_image': product.product_image.url,
            'product_slug_url': product.product_slug_url,
            'size': product.size,
            'sku': product.sku,
            'get_discounted_percent': product.get_discounted_percent(),
            'get_original_price': product.get_original_price(),
            'get_discounted_price': product.get_discounted_price(),
            'slugUrl': product.slugUrl(),

        })
    
    pagination = {
        'previous_page_number': page_obj.previous_page_number() if page_obj.has_previous() else False,
        'next_page_number': page_obj.next_page_number() if page_obj.has_next() else False,
        'current_page_number': page_obj.number,
        'total_page_number': page_obj.paginator.num_pages,
        'has_previous': page_obj.has_previous(),
        'has_next': page_obj.has_next()

    }
    

    context = {
		'products': products,
        'pagination': pagination
	}
  
    return JsonResponse(context)

def searchProducts(request):
    productsCategory = request.GET.get('productsCategory')
    productsItem = request.GET.get('productsItem')


    pros = Products.objects
    products = []

   
    pros= pros.filter(name__contains=productsItem)

    for i in pros:
        products.append({
            'name': i.name,
            'price': i.price,
            'has_discount': i.has_discount,
            'discoun_price': i.discoun_price,
            'image': i.product_image.url,
            'url': i.get_pro_detail_url()
        })
    
    # products = json.dumps(products)
    print(products)
    return JsonResponse({'data': products})

def productsdetail(request,subCategorySlug):
    singleProduct = Products.objects.get(product_slug_url=subCategorySlug)    
    # images = ProductImages.objects.filter(product__product_slug_url=subCategorySlug, display_place="0")
    productImages = ProductImages.objects.filter(product=singleProduct.pk, display_place="0")
    productDiscriptiveImages = ProductImages.objects.filter(product=singleProduct.pk, display_place="1")    

    sameCategoryProducts = Products.objects.filter(sub_category=singleProduct.sub_category.pk)
    productQuerySetObj = Paginator(sameCategoryProducts, 6) 
    page_number = request.GET.get('page')
    page_obj = productQuerySetObj.get_page(page_number)

    other_oprions = ProductOption.objects.filter(sub_category=singleProduct.sub_category.pk)
    
    # Rating
    comments = []
    ratings = Rating.objects.filter(product_id=singleProduct.pk, type=0, status=1)
    for rating in ratings:
        hasReply = False
        replied = []
        checkReply = Rating.objects.filter(product_id=singleProduct.pk, type='1', answer_of=rating.pk, status=1)
        if(checkReply):
            hasReply = True
            for rep in checkReply:
                replied.append({
                    'name': rep.name,
                    'date': rep.date,
                    'description': rep.description,
                })


        activeStart = '<i class="fa fa-star active"></i>'*int(rating.stars)
        totalStars = '<i class="fa fa-star" style="color:#b6b7b5 !important;"></i>'*(5-int(rating.stars))
        
        comments.append({
            'pk': rating.pk,
            'name': rating.name,
            'date': rating.date,
            'description': rating.description,
            'activeStart': activeStart,
            'totalStars': totalStars,
            'hasReply': hasReply,
            'replied': replied
        })
    
    print("===============================")
    print(comments)
    print("===============================")
    context = {
        'singleProduct': singleProduct,
        'subCategorySlug': subCategorySlug,
        'page_obj': page_obj,
        'other_oprions': other_oprions,
        'productImages': productImages,
        'productDiscriptiveImages': productDiscriptiveImages,
        'RatingForm': RatingForm(),
        'comments': comments
    }    
    return render(request,'frontend/product.html', context)

def productRatingSave(request):
    subCategorySlug = request.POST.get('subCategorySlug')
    ratingForm = RatingForm(request.POST)
    if ratingForm.is_valid():
        ratingForm.save()

    return redirect('productsdetail', subCategorySlug=subCategorySlug)
        
def trackProduct(request):
    trackingId = request.GET.get('trackingId')
    check = False
    status = {}
    ordpk = Order.objects.filter(tracking_id=trackingId).first()
    
    if ordpk:
        statuses = OrderStatus.objects.filter(orderid = ordpk.pk).first()
        if not statuses:
            status.update({'status': 'Pending', 'deliverd_date': 'N/A', 'orderObj': ordpk})
        else:
            status.update({
                'status': statuses.status,
                'deliverd_date': statuses.deliverd_date,
                'orderObj': ordpk
            })
        check = True

    context = {
        'check': check,
        'status': status
    }
    return render(request,'frontend/tracker.html', context)

@csrf_exempt
@login_required(login_url='customerLogin')
def add_to_cart(request, pk):
    item = get_object_or_404(Products, pk=pk)

    size_with_price = request.POST.get('size_with_price', None)
    color = request.POST.get('color', None)
    back_cushions = request.POST.get('back_cushions', None)

    order_item, created = OrderItem.objects.get_or_create(
        item = item,
        user = request.user,
        ordered = False,
        size_with_price = size_with_price,
        color = color,
        back_cushions = back_cushions

    )
    order_qs = Order.objects.filter(user=request.user, ordered=False)

    addTocartForm = request.POST
    print('============addTocartForm============')
    print(addTocartForm)
    print('=============addTocartForm===========')

    # option_options = []
    # for k,v in addTocartForm.items():
    #     print("KEY:", k, "Val:",v)
    #     if k not in ["csrfmiddlewaretoken", "itemid"] :
    #         option_options.append({
    #             k:v
    #         })

    # option_options = json.dumps(option_options)

    if order_qs.exists():
        order = order_qs[0]
        if order.items.filter(item__pk=item.pk, size_with_price = size_with_price, color = color).exists():
            order_item.quantity += 1
            order_item.save()
            messages.info(request, "Added quantity Item")
            return redirect("productsdetail", subCategorySlug=item.slugUrl())
        else:
            order.items.add(order_item)
            messages.info(request, "Item added to your cart")
            return redirect("productsdetail", subCategorySlug=item.slugUrl())
    else:
        ordered_date = timezone.now()
        order = Order.objects.create(user=request.user, ordered_date=ordered_date)
        order.items.add(order_item)
        messages.info(request, "Item added to your cart")
        return redirect("productsdetail", subCategorySlug=item.slugUrl())

@login_required(login_url='customerLogin')
def remove_from_cart(request, pk):
    item = get_object_or_404(Products, pk=pk )
    order_qs = Order.objects.filter(
        user=request.user, 
        ordered=False
    )
    if order_qs.exists():
        order = order_qs[0]
        if order.items.filter(item__pk=item.pk).exists():
            order_item = OrderItem.objects.filter(
                item=item,
                user=request.user,
                ordered=False
            )[0]
            order_item.delete()
            check_order_item_istill_in_cart = OrderItem.objects.filter(
                user=request.user,
                ordered=False
            )
            # delete the order it order item is empty
            if check_order_item_istill_in_cart.count() < 1:
                order_qs.delete()
            else:
                messages.info(request, "Item \""+order_item.item.name+"\" remove from your cart")
            return redirect("view-cart")
        else:
            messages.info(request, "This Item not in your cart")
            return redirect("product", pk=pk)
    else:
        #add message doesnt have order
        messages.info(request, "You do not have an Order")
        return redirect("product", pk = pk)

@login_required(login_url='customerLogin')
def add_to_cart_increse(request, pk):
    item = get_object_or_404(Products, pk=pk )
    order_item, created = OrderItem.objects.get_or_create(
        item = item,
        user = request.user,
        ordered = False
    )
    order_qs = Order.objects.filter(user=request.user, ordered=False)

    if order_qs.exists():
        order = order_qs[0]

        if order.items.filter(item__pk=item.pk).exists():
            order_item.quantity += 1
            order_item.save()
            messages.info(request, "Added quantity Item")
            return redirect("view-cart")
        else:
            order.items.add(order_item)
            messages.info(request, "Item added to your cart")
            return redirect("view-cart")
    else:
        ordered_date = timezone.now()
        order = Order.objects.create(user=request.user, ordered_date=ordered_date)
        order.items.add(order_item)
        messages.info(request, "Item added to your cart")
        return redirect("view-cart")

@login_required(login_url='customerLogin')
def reduce_quantity_item(request, pk):
    item = get_object_or_404(Products, pk=pk )
    order_qs = Order.objects.filter(
        user = request.user, 
        ordered = False
    )
    if order_qs.exists():
        order = order_qs[0]
        if order.items.filter(item__pk=item.pk).exists() :
            order_item = OrderItem.objects.filter(
                item = item,
                user = request.user,
                ordered = False
            )[0]
            if order_item.quantity > 1:
                order_item.quantity -= 1
                order_item.save()
            else:
                order_item.delete()

                # delete the order it order item is empty
                check_order_item_istill_in_cart = OrderItem.objects.filter(
                    user = request.user,
                    ordered = False
                )
                if check_order_item_istill_in_cart.count() < 1:
                    order_qs.delete()
            messages.info(request, "Item quantity was updated")
            return redirect("view-cart")
        else:
            messages.info(request, "This Item not in your cart")
            return redirect("view-cart")
    else:
        #add message doesnt have order
        messages.info(request, "You do not have an Order")
        return redirect("view-cart")

@login_required(login_url='customerLogin')
def viewCart(request):

	try:
		order = Order.objects.get(user=request.user, ordered=False)
		context = {
			'object': order
		}		
		return render(request, 'frontend/view-cart.html', context)

	except ObjectDoesNotExist:            
		# messages.error(request, "You do not have an order")
		return redirect("/")

@csrf_exempt
def checkout(request):    
    addressbook = AddressBook.objects.filter(user=request.user)
    form = CheckoutForm()
    try:
        order = Order.objects.get(user=request.user, ordered=False)
    except:
        return redirect('myOrders')
    checkaddress = False

    if request.method == 'POST':       

        try:
            order = Order.objects.get(user=request.user, ordered=False)
            form = CheckoutForm(json.loads(request.body) or None)
            if form.is_valid():

                full_name = form.cleaned_data.get('full_name')
                company_name = form.cleaned_data.get('company_name')
                country = form.cleaned_data.get('country')
                city = form.cleaned_data.get('city')
                address = form.cleaned_data.get('address')
                state = form.cleaned_data.get('state')
                zip = form.cleaned_data.get('zip')
                phone = form.cleaned_data.get('phone')
                email = form.cleaned_data.get('email')
                effective_delivery = form.cleaned_data.get('effective_delivery')
         

                print('=====================stripe id=====================')
                print(json.loads(request.body).get('stripe_id'))
                print('=====================deleavry=====================')
                print(full_name)
                print('==========================================')
              
                checkout_address = AddressBook(
                    user=request.user,
                    full_name=full_name,
                    company_name=company_name,
                    country=country,
                    city=city,
                    address=address,
                    state=state,
                    zip=zip,
                    phone=phone,
                    email=email,
                    effective_delivery=effective_delivery,
                    order_notes="order Note"
                )
                checkout_address.save()

                # create payment
                payment = Payment()
                payment.stripe_id = json.loads(request.body).get('stripe_id')
                payment.user = request.user
                payment.amount = order.get_total_price()
                payment.save()

                # assign payment to order
                order.ordered = True
                order.payment = payment
                order.save()
                order.checkout_address = checkout_address
                order.save()
                messages.success(request, "Your order has been placed successfully. ")
                sendMail(order.pk)
                return JsonResponse({"status": "success"})
            else:
                print('====================CHECKING last ESLE============')
                print(form.errors)
                return JsonResponse({"status": "error", "message": str(form.errors)})
            # return redirect('index')
        except ObjectDoesNotExist:
                # messages.error(request, "You do not have an order")
                # return redirect("order-summary")
                return JsonResponse({"status": "error", "message": "You do not have an order"})

    context = {
        'form': form,
        'order': order,
        'addressbook': addressbook,
        'checkaddress': checkaddress,
        "STRIPE_PUBLIC_KEY": settings.STRIPE_PUBLIC_KEY
    }
    return render(request, 'frontend/checkout.html', context)

class StripeIntentView(View):
    def post(self, request, *args, **kwargs):
        try:
            req_json = json.loads(request.body)
            order = Order.objects.get(user=request.user, ordered=False)
            # print("==================order.get_total_price====", order.get_total_price())

            customer = stripe.Customer.create(email=request.user.email)

            intent = stripe.PaymentIntent.create(
                amount=int(int(float(order.get_total_price()))* 100),
                currency='gbp',
                customer=customer['id'],
                metadata={
                    "product_id": order.pk
                }
            )
            return JsonResponse({
                'clientSecret': intent['client_secret']
            })
        except Exception as e:
            return JsonResponse({ 'error': str(e) })

def myOrders(request):
    orders = Order.objects.filter(user=request.user, ordered=True)
    allOrders = []
    for order in orders:
        allOrders.append({
            'pk': order.pk,
            'items': order.items,
            'start_date': order.start_date,
            'ordered_date': order.ordered_date,
            'tracking_id': order.tracking_id,
            'orderStatus': OrderStatus.objects.filter(orderid=order.pk).first()
        })
    return render(request, 'frontend/myOrders.html', {"orders":allOrders})

def termsAndCondition(request):
    return render(request, 'frontend/terms.html')

def blog(request):
    blogsDown = Blog.objects.all()
    paginator = Paginator(blogsDown, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'page_obj': page_obj
    }
    return render(request, 'frontend/blog.html', context)

def contact(request):
    return render(request, 'frontend/contact.html')