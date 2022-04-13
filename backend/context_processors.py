from django.shortcuts import render
from backend.models import NavigationMenu, NavigationSubMenu, Order, OrderStatus, Products, ProductImages, SiteSetting
from backend.views import getIP
from django.db.models import Q
from django.contrib.auth.models import User


def add_variable_to_context(request):
    allMenus = {}
    navigationMenu = NavigationMenu.objects.all()

    for menu in navigationMenu:
        subMenu = [submenu for submenu in NavigationSubMenu.objects.filter(parent_menu=menu.pk)]
        allMenus.update({  menu: subMenu })

    # part_list = NavigationSubMenu.objects.all().prefetch_related('parent_menu')

        
    # TOTAL CATEGORIES
    allCategories = NavigationSubMenu.objects.all()
    
    # SITESETTING DATABASES
    sitesetting = SiteSetting.objects.get(pk=1)
    
    # ALL NEW Users
    newUsers = User.objects.filter(~Q(username="admin")).count()

    # User Orders for cart
    order = []
    if request.user.is_authenticated:
        try:
            order = Order.objects.get(user=request.user, ordered=False)
        except:
            pass

    # for orders requests
    orderStatus = OrderStatus.objects.values('orderid').all()
    requestedOrderes = Order.objects.exclude(pk__in=orderStatus).count()
    context = {
        'allMenus': allMenus,
        'allCategories': allCategories,
        'sitesetting': sitesetting,
        'newUsers': newUsers,
        'completedOrders': OrderStatus.objects.filter(status="Delivered").count(),
        'newOrders': OrderStatus.objects.filter(~Q(status="Delivered")).count(),
        'requestedOrders': requestedOrderes,
        'OrderObject': order,
    }
    return context

