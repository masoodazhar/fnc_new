from django.db.models import Q
from django.views.generic.detail import DetailView
from .forms import OrderStatusForm, RatingForm
from django.db import models
from django.forms import widgets
from django.http.response import JsonResponse
from django.shortcuts import redirect, render
from django.urls.base import reverse
from django.views.generic import CreateView, UpdateView, DeleteView, TemplateView, ListView
from django.contrib.auth.models import User
import json
from .models import (
    About,
    Blog,
    Instagram,
    ProductOption,
    Rating,
    SeasionSale,
    SiteSetting,
    Products,
    ProductImages,
    NavigationMenu,
    NavigationSubMenu,
    Order, 
    OrderStatus,
    Sliders
)
from .forms import ProductImagesForm, ProductsForm
# Create your views here.
from django.contrib.auth.mixins import LoginRequiredMixin

from django import forms

# ORDERS
def UsersOrders(request):
    form = OrderStatusForm()
    if request.method == 'POST':
        form = OrderStatusForm(request.POST)
        if form.is_valid():
            form.save()
        else:
            print('=========================', form.errors)
    orderStatus = OrderStatus.objects.values('orderid').all()
    order = Order.objects.exclude(pk__in=orderStatus)

    context = {
        'orders': order,
        'UsersOrders': True,
        'form': form
    }
    return render(request,'backend/OrdersAndShipping/Orders.html', context)

def processedOrders(request):
    
    form = OrderStatusForm()
    if request.method == 'POST':
        deliverd_date = request.POST.get('deliverd_date')
        status = request.POST.get('status')

        object = OrderStatus.objects.filter(pk=request.POST.get('pk'))
        
        if deliverd_date !='':
            object.update(status = status, deliverd_date = deliverd_date)
        else:
            object.update(status = status)
        
    orderStatus = OrderStatus.objects.filter(~Q(status="Delivered"))
    context = {
        'orders': orderStatus,
        'form': form,
        'processedOrders': True,
    }
    return render(request,'backend/OrdersAndShipping/ProcessOrders.html', context)

def deliveredOrders(request):     
    orderStatus = OrderStatus.objects.filter(status="Delivered")
    
    context = {
        'orders': orderStatus,
        'deliveredOrders': True,
    }
    return render(request,'backend/OrdersAndShipping/deliveredOrders.html', context)

class baackend(LoginRequiredMixin, UpdateView):

    def get_object(self):
        return SiteSetting.objects.get(pk=1)

    
    template_name = 'backend/contentmanagement/ContentManagement.html'
    login_url = 'login'
    model = SiteSetting
    fields = '__all__'

    def get_form(self, **kwargs):            
        form = super(baackend, self).get_form(**kwargs)
        form.fields['theme_color'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['header_background'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['footer_background'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['nav_header_fixed_color_backgroud'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['heading_color'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['nav_text_color'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['nav_text_mouse_hover_color'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['icons_color'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['theme_background_color_1'].widget = forms.TextInput(attrs={'type': 'color'})
        form.fields['theme_background_color_2'].widget = forms.TextInput(attrs={'type': 'color'})
        return form

    def get_context_data(self, **kwargs):
        context = super(baackend, self).get_context_data(**kwargs)
        context['ContentManagement'] = True
        context['categories']= NavigationMenu.objects.all()
        context['subcategories'] = NavigationSubMenu.objects.all()
        context['products'] = Products.objects.all()
        
        return context


# class siteSetting(UpdateView):
#     model = SiteSetting
#     template_name = 'backend/contentmanagement/ContentManagement.html'

# BLOG STARTS
class CreateBlog(CreateView):
    model = Blog
    fields = '__all__'
    template_name = 'backend/contentmanagement/Blog.html'

    
    def get_form(self, **kwargs):            
        form = super(CreateBlog, self).get_form(**kwargs)
        form.fields['in_products'] = forms.ModelMultipleChoiceField(queryset=Products.objects.all())
        form.fields['date'].widget = forms.TextInput(attrs={'type': 'date'})
        return form

    def get_context_data(self, **kwargs):
        context = super(CreateBlog, self).get_context_data(**kwargs)
        context['BlogList'] = Blog.objects.all() 
        # context['BlogForm'] = BlogForm()
        context['tabsblog'] = True
        return context
    

class UpdateBlog(LoginRequiredMixin ,UpdateView):
    model = Blog
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/Blog.html'
    
    

    def get_form(self, **kwargs):            
        form = super(UpdateBlog, self).get_form(**kwargs)
        form.fields['in_Products'] = forms.ModelMultipleChoiceField(queryset=Products.objects.all())
        form.fields['date'].widget = forms.TextInput(attrs={'type': 'date'})
        return form

    def get_context_data(self, **kwargs):
        context = super(UpdateBlog, self).get_context_data(**kwargs)
        context['BlogList'] = Blog.objects.all() 
        # context['BlogForm'] = BlogForm(instance=self.object)
        context['tabsblog'] = True
        return context

def DeleteBlog(request, pk):
    model = Blog.objects.get(pk=pk)
    model.delete()
    return redirect('Blog')



# ABOUT STARTS
class CreateAbout(CreateView):
    model = About
    fields = '__all__'
    template_name = 'backend/contentmanagement/About.html'
    def get_context_data(self, **kwargs):
        context = super(CreateAbout, self).get_context_data(**kwargs)
        context['AboutList'] = About.objects.all() 
        # context['AboutForm'] = AboutForm()
        context['tabsabout'] = True
        return context
    

class UpdateAbout(LoginRequiredMixin ,UpdateView):
    model = About
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/About.html'
    
    def get_context_data(self, **kwargs):
        context = super(UpdateAbout, self).get_context_data(**kwargs)
        context['AboutList'] = About.objects.all() 
        # context['AboutForm'] = AboutForm(instance=self.object)
        context['tabsabout'] = True
        return context

def  DeleteAbout(request, pk):
    model = About.objects.get(pk=pk)
    model.delete()
    return redirect('About')
    

class Contact(LoginRequiredMixin ,UpdateView):
    model = NavigationSubMenu
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/NavigationSubMenu.html'
    
    def get_context_data(self, **kwargs):
        context = super(UpdateNavigationSubMenu, self).get_context_data(**kwargs)
        context['NavigationSubMenuList'] = NavigationSubMenu.objects.all() 
        # context['NavigationSubMenuForm'] = NavigationSubMenuForm(instance=self.object)
        context['tabsubmenu'] = True
        return context

class CreateNavigationMenu(LoginRequiredMixin, CreateView):
    model = NavigationMenu
    fields = '__all__'
    login_url = 'login'

    template_name = 'backend/contentmanagement/NavigationMenu.html'
    def get_context_data(self, **kwargs):
        context = super(CreateNavigationMenu, self).get_context_data(**kwargs)
        context['NavigationMenuList'] = NavigationMenu.objects.all() 
        # context['NavigationMenuForm'] = NavigationMenuForm()
        context['tabsmenu'] = True
        return context
    

class UpdateNavigationMenu(LoginRequiredMixin, UpdateView):
    model = NavigationMenu
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/NavigationMenu.html'
    def get_context_data(self, **kwargs):
        context = super(UpdateNavigationMenu, self).get_context_data(**kwargs)
        context['NavigationMenuList'] = NavigationMenu.objects.all() 
        # context['NavigationMenuForm'] = NavigationMenuForm(instance=self.object)
        context['tabsmenu'] = True
        return context

def DeleteNavigationMenu(request, pk):
    model = NavigationMenu.objects.get(pk=pk)
    model.delete()
    return redirect('CreateNavigationMenu')
    

class CreateNavigationSubMenu(CreateView):
    model = NavigationSubMenu
    fields = '__all__'
    template_name = 'backend/contentmanagement/NavigationSubMenu.html'
    
    def get_context_data(self, **kwargs):
        context = super(CreateNavigationSubMenu, self).get_context_data(**kwargs)
        context['NavigationSubMenuList'] = NavigationSubMenu.objects.all() 
        # context['NavigationSubMenuForm'] = NavigationSubMenuForm()
        context['tabsubmenu'] = True
        return context
    

class UpdateNavigationSubMenu(LoginRequiredMixin ,UpdateView):
    model = NavigationSubMenu
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/NavigationSubMenu.html'
    
    def get_context_data(self, **kwargs):
        context = super(UpdateNavigationSubMenu, self).get_context_data(**kwargs)
        context['NavigationSubMenuList'] = NavigationSubMenu.objects.all() 
        # context['NavigationSubMenuForm'] = NavigationSubMenuForm(instance=self.object)
        context['tabsubmenu'] = True
        return context

def DeleteNavigationSubMenu(request, pk):
    model = NavigationSubMenu.objects.get(pk=pk)
    model.delete()
    return redirect('CreateNavigationSubMenu')


class CreateProducts(LoginRequiredMixin, CreateView):
    model = Products
    fields = '__all__'
    login_url = 'login'

    template_name = 'backend/contentmanagement/products.html'
    
    def post(self, form):
        current_object = ProductsForm()
        form = ProductsForm(self.request.POST, self.request.FILES)
        if form.is_valid():
            current_object = form.save(commit=False)
        
            # ========other options=========
            other_options = []
            key_value_obj = {}
            
            
            # for post_request_keys, post_request_values  in self.request.POST.items():
            #     if "_options" in post_request_keys and post_request_values != "":
            #         key_value_obj[post_request_keys] = post_request_values
            # other_options.append(key_value_obj)
            # print('=======================start=====================')
            # print(json.dumps(other_options))
            # print(len(key_value_obj))
            # if len(key_value_obj) >0:
            #     current_object.save()
            #     current_object.other_options = json.dumps(other_options)
            # else:
            #     current_object.save()

            current_object.other_options = json.dumps(other_options)
            current_object.save()

            # print('======================end======================')
            obj = Products.objects.latest('id')
            imagesData_image = self.request.FILES.getlist('image')
            display_place = self.request.POST.getlist('display_place')
        
            for index, image in enumerate(imagesData_image):
                print('=========================display_place[index]===============')
                print(display_place[index])
                print('=========================display_place[index]===============')
                imageForm = ProductImages(product=obj,  image=image, color='', display_place=display_place[index])
                imageForm.save()

        return redirect('CreateProducts')


    def get_context_data(self, **kwargs):
        context = super(CreateProducts, self).get_context_data(**kwargs)
        context['ProductsList'] = Products.objects.all() 
        context['tabproducts'] = True        
        context['ProductImagesForm'] = ProductImagesForm()
        return context    


    # model = Products
    # fields = '__all__'
    # login_url = 'login'

    # template_name = 'backend/contentmanagement/products.html'
    
    # def post(self, form):
    #     form = ProductsForm(self.request.POST, self.request.FILES)
    #     if form.is_valid():
    #         form.save()
        
    #     obj = Products.objects.latest('id')
    #     images = self.request.FILES.getlist('image')
    #     for image in images:
    #         imageForm = ProductImages(product=obj,  image=image, color='')
    #         imageForm.save()
    #     return redirect('CreateProducts')


    # def get_context_data(self, **kwargs):
    #     context = super(CreateProducts, self).get_context_data(**kwargs)
    #     products = []
    #     pros =  Products.objects.all() 
    #     for i in pros:
    #         img = ProductImages.objects.filter(product=i).first()
    #         products.append({
    #             'details': i,
    #             'images': img
    #         })
    #     context['ProductsList'] = products
    #     context['tabproducts'] = True
    #     context['ProductImagesForm'] = ProductImagesForm()
    #     return context    

class UpdateProducts(LoginRequiredMixin, UpdateView):
    model = Products
    fields = '__all__'
    login_url = 'login'

    template_name = 'backend/contentmanagement/products.html'

    def post(self, form, **kwargs):
        pk = self.kwargs.get('pk')
        obj = Products.objects.get(pk=pk)
        form = ProductsForm(self.request.POST, self.request.FILES, instance=obj)
        if form.is_valid():
            current_object = form.save(commit=False)
        
            # ========other options=========
            other_options = []
            key_value_obj = {}
            
            
            # for post_request_keys, post_request_values  in self.request.POST.items():
            #     if "_options" in post_request_keys and post_request_values != "":
            #         key_value_obj[post_request_keys] = post_request_values
            # other_options.append(key_value_obj)
            # print('=======================start=====================')
            # print(json.dumps(other_options))
            # print(len(key_value_obj))
            # if len(key_value_obj) >0:
            #     current_object.save()
            #     current_object.other_options = json.dumps(other_options)
            # else:
            #     current_object.save()

            current_object.other_options = json.dumps(other_options)
            current_object.save()

            # print('======================end======================')
            obj = Products.objects.latest('id')
            imagesData_image = self.request.FILES.getlist('image')
            display_place = self.request.POST.getlist('display_place')
        
            for index, image in enumerate(imagesData_image):
                print('=========================display_place[index]===============')
                print(display_place[index])
                print('=========================display_place[index]===============')
                imageForm = ProductImages(product=obj,  image=image, color='', display_place=display_place[index])
                imageForm.save()
                
        return redirect('CreateProducts')

    def get_context_data(self, **kwargs):
        context = super(UpdateProducts, self).get_context_data(**kwargs)
        products = []
        # pros =  Products.objects.all() 
        # for i in pros:
        #     img = ProductImages.objects.filter(product=i)
        #     products.append({
        #         'details': i,
        #         'images': img
        #     })
        context['ProductsList'] = Products.objects.all() 
        context['ProductsImages'] = ProductImages.objects.filter(product=self.kwargs['pk']) 
        context['tabproducts'] = True
        context['sabcateid'] = 1
        context['otherOptions'] = json.loads(Products.objects.get(pk=self.kwargs['pk']).other_options)
        context['isUpdate'] = True
        context['ProductImagesForm'] = ProductImagesForm()
        context['productId'] = self.kwargs['pk']
        return context     

class ViewProducts(LoginRequiredMixin, DetailView):
    model = Products
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/viewproduct.html'
    
    def get_context_data(self, **kwargs):
        context = super(ViewProducts, self).get_context_data(**kwargs)
        products = []
        pk = self.kwargs.get('pk')
        print(pk,'======================')
        pros =  Products.objects.get(pk=pk)
        img = ProductImages.objects.filter(product=pros)
       
        context['ProductsList'] = pros
        context['images'] = img
        # context['tabproducts'] = True
        # context['ProductImagesForm'] = ProductImagesForm()
        return context

def DeleteProducts(request, pk):
    modelObj = Products.objects.get(pk=pk)
    modelObj.delete()
    return redirect('CreateProducts')

def DeleteProductImage(request, pk, productId):
    # modelObj = ProductImages.objects.get(pk=pk)
    # modelObj.delete()
    return redirect('UpdateProducts', pk=productId)


# SeasionSale STARTS
class CreateSeasionSale(CreateView):
    model = SeasionSale
    fields = '__all__'
    template_name = 'backend/contentmanagement/SeasionSale.html'

    def get_context_data(self, **kwargs):
        context = super(CreateSeasionSale, self).get_context_data(**kwargs)
        context['SeasionSaleList'] = SeasionSale.objects.all() 
        # context['SeasionSaleForm'] = SeasionSaleForm()
        context['tabsSeasionSale'] = True
        return context
    

class UpdateSeasionSale(LoginRequiredMixin ,UpdateView):
    model = SeasionSale
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/contentmanagement/SeasionSale.html'

    def get_context_data(self, **kwargs):
        context = super(UpdateSeasionSale, self).get_context_data(**kwargs)
        context['SeasionSaleList'] = SeasionSale.objects.all() 
        # context['SeasionSaleForm'] = SeasionSaleForm(instance=self.object)
        context['tabsSeasionSale'] = True
        return context

def DeleteSeasionSale(request, pk):
    model = SeasionSale.objects.get(pk=pk)
    model.delete()
    return redirect('CreateSeasionSale')


# Instagram STARTS
class CreateInstagram(CreateView):
    model = Instagram
    fields = '__all__'
    template_name = 'backend/Instagram.html'

    def get_context_data(self, **kwargs):
        context = super(CreateInstagram, self).get_context_data(**kwargs)
        context['InstagramList'] = Instagram.objects.all() 
        # context['InstagramForm'] = InstagramForm()
        context['tabsInstagram'] = True
        return context
    

class UpdateInstagram(LoginRequiredMixin ,UpdateView):
    model = Instagram
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/Instagram.html'

    def get_context_data(self, **kwargs):
        context = super(UpdateInstagram, self).get_context_data(**kwargs)
        context['InstagramList'] = Instagram.objects.all() 
        # context['InstagramForm'] = InstagramForm(instance=self.object)
        context['tabsInstagram'] = True
        return context

def DeleteInstagram(request, pk):
    model = Instagram.objects.get(pk=pk)
    model.delete()
    return redirect('CreateInstagram')



# Instagram STARTS
class CreateRatings(CreateView):
    model = Rating
    fields = ('name', 'description', 'answer_of', 'type')
    template_name = 'backend/Ratings.html'

    def post(self, form):
        form = RatingForm(self.request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            productId = Rating.objects.get(pk=self.request.POST.get('answer_of'))
            post.product_id = productId.product_id
            post.save()
        else:
            print(form.errors)
        return redirect('CreateRatings')
       

    def get_context_data(self, **kwargs):
        context = super(CreateRatings, self).get_context_data(**kwargs)
        context['RatingsList'] = Rating.objects.all() 
        context['UserRatingsList'] = Rating.objects.filter(type="0") 
        # context['RatingsForm'] = RatingsForm()
        context['tabsRatings'] = True
        return context
    

class UpdateRatings(LoginRequiredMixin ,UpdateView):
    model = Rating
    fields = ('name', 'description', 'answer_of', 'type')
    login_url = 'login'
    template_name = 'backend/Ratings.html'

    def get_context_data(self, **kwargs):
        context = super(UpdateRatings, self).get_context_data(**kwargs)
        context['RatingsList'] = Rating.objects.all() 
        context['UserRatingsList'] = Rating.objects.filter(type="0") 
        # context['RatingsForm'] = RatingsForm(instance=self.object)
        context['tabsRatings'] = True
        return context

def DeleteRatings(request, pk):
    model = Rating.objects.get(pk=pk)
    model.delete()
    return redirect('CreateRatings')


def changeRatingStatus(request, pk):
    obj = Rating.objects.get(pk=pk)
    if(obj.status == 1):
        obj.status = 0
    else:
        obj.status = 1
    obj.save()
    return redirect('CreateRatings')


def allUsers(request):
    users = User.objects.filter(~Q(username="admin"))
    return render(request, 'backend/users.html', {'users': users})


""" Create Options """
class CreateProductOption(LoginRequiredMixin, CreateView):
    model = ProductOption
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/ProductOption.html'
    def get_context_data(self, **kwargs):
        context = super(CreateProductOption, self).get_context_data(**kwargs)
        context['ProductOptionList'] = ProductOption.objects.all() 
        # context['ProductOptionForm'] = ProductOptionForm()
        context['tabsubmenu'] = True
        return context
    

class UpdateProductOption(LoginRequiredMixin ,UpdateView):
    model = ProductOption
    fields = '__all__'
    login_url = 'login'
    template_name = 'backend/ProductOption.html'
    
    def get_context_data(self, **kwargs):
        context = super(UpdateProductOption, self).get_context_data(**kwargs)
        context['ProductOptionList'] = ProductOption.objects.all() 
        # context['ProductOptionForm'] = ProductOptionForm(instance=self.object)
        context['tabsubmenu'] = True
        return context


def DeleteProductOption(request, pk):
    model = ProductOption.objects.get(pk=pk)
    model.delete()
    return redirect('CreateProductOption')


def getProductOptions(request):
    id_sub_category = request.GET.get('id_sub_category')
    productOption = ProductOption.objects.filter(sub_category=id_sub_category)
    # all_items = zip(map(lambda x:dir(x), productOption))
    all_items = list(productOption.values())
    return JsonResponse(all_items, safe=False)

def getSubcategoryByCategory(request):
    cate_id = request.GET.get('cate_id')
    sub_menus = NavigationSubMenu.objects.filter(parent_menu=cate_id)
  
    sub_menus_obj = list(sub_menus.values())

    return JsonResponse(sub_menus_obj, safe=False)

'''
Slider starts here
'''
class CreateSliders(LoginRequiredMixin, CreateView):
    model = Sliders
    fields = '__all__'
    login_url = 'login'

    template_name = 'backend/contentmanagement/Sliders.html'

    def get_form(self, **kwargs):            
        form = super(CreateSliders, self).get_form(**kwargs)
        # form.fields['slider_image'].widget.attrs = {'multiple': 'multiple'}
        return form

    # def post(self, form):
    #     images = self.request.FILES.getlist('slider_image')
    #     print('======================')
    #     print(images)
    #     return super(CreateSliders, self).post(form)

    def get_context_data(self, **kwargs):
        context = super(CreateSliders, self).get_context_data(**kwargs)
        context['SlidersList'] = Sliders.objects.all() 
        context['tabslider'] = True
        return context    

class UpdateSliders(LoginRequiredMixin, UpdateView):
    model = Sliders
    fields = '__all__'
    login_url = 'login'

    template_name = 'backend/contentmanagement/Sliders.html'
    def get_context_data(self, **kwargs):
        context = super(UpdateSliders, self).get_context_data(**kwargs)
        context['SlidersList'] = Sliders.objects.all() 
        context['tabslider'] = True
        return context

def DeleteSliders(request, pk):
    model = Sliders.objects.get(pk=pk)
    model.delete()
    return redirect('CreateSliders')


def getIP(request):    
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip