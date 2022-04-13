from django.contrib import admin
from django.urls import path, include
from .views import (
    baackend,
 
    CreateNavigationMenu,
    UpdateNavigationMenu,
    DeleteNavigationMenu,

    CreateNavigationSubMenu,
    UpdateNavigationSubMenu,
    DeleteNavigationSubMenu,

    CreateProducts,
    UpdateProducts,
    DeleteProducts,
    ViewProducts,
    DeleteProductImage,

    CreateAbout,
    UpdateAbout,
    DeleteAbout,

    CreateBlog,
    UpdateBlog,
    DeleteBlog,

    CreateProductOption,
    UpdateProductOption,
    DeleteProductOption,
    getProductOptions,

    CreateSliders,
    UpdateSliders,
    DeleteSliders,

    UsersOrders,
    processedOrders,
    deliveredOrders,
    # siteSetting,

    CreateSeasionSale,
    UpdateSeasionSale,
    DeleteSeasionSale,

    CreateInstagram,
    UpdateInstagram,
    DeleteInstagram,

    CreateRatings,
    UpdateRatings,
    DeleteRatings,
    changeRatingStatus,
    allUsers,
    # AJAX
    
    getSubcategoryByCategory

  
)

urlpatterns = [
    path('', baackend.as_view(), name='contentmanagement'),

    path('CreateNavigationMenu/', CreateNavigationMenu.as_view(), name='CreateNavigationMenu'),
    path('UpdateNavigationMenu/<int:pk>/update', UpdateNavigationMenu.as_view(), name='UpdateNavigationMenu'),
    path('DeleteNavigationMenu/<int:pk>/delete', DeleteNavigationMenu, name='DeleteNavigationMenu'),

    path('CreateNavigationSubMenu/', CreateNavigationSubMenu.as_view(), name='CreateNavigationSubMenu'),
    path('UpdateNavigationSubMenu/<int:pk>/update', UpdateNavigationSubMenu.as_view(), name='UpdateNavigationSubMenu'),
    path('DeleteNavigationSubMenu/<int:pk>/delete', DeleteNavigationSubMenu, name='DeleteNavigationSubMenu'),

    path('CreateProducts/', CreateProducts.as_view(), name='CreateProducts'),
    path('UpdateProducts/<int:pk>/update', UpdateProducts.as_view(), name='UpdateProducts'),
    path('ViewProducts/<int:pk>/View&Manage', ViewProducts.as_view(), name='ViewProducts'),
    path('DeleteProducts/<int:pk>/delete', DeleteProducts, name='DeleteProducts'),
    path('DeleteProductImage/<int:pk>/<int:productId>/delete', DeleteProductImage, name='DeleteProductImage'),

    path('CreateAbout/', CreateAbout.as_view(), name='CreateAbout'),
    path('UpdateAbout/<int:pk>/update', UpdateAbout.as_view(), name='UpdateAbout'),
    path('DeleteAbout/<int:pk>/delete', DeleteAbout, name='DeleteAbout'),

    path('CreateBlog/', CreateBlog.as_view(), name='CreateBlog'),
    path('UpdateBlog/<int:pk>/update', UpdateBlog.as_view(), name='UpdateBlog'),
    path('DeleteBlog/<int:pk>/delete', DeleteBlog, name='DeleteBlog'),
    
    path('CreateSeasionSale/', CreateSeasionSale.as_view(), name='CreateSeasionSale'),
    path('UpdateSeasionSale/<int:pk>/update', UpdateSeasionSale.as_view(), name='UpdateSeasionSale'),
    path('DeleteSeasionSale/<int:pk>/delete', DeleteSeasionSale, name='DeleteSeasionSale'),

    path('CreateInstagram/', CreateInstagram.as_view(), name='CreateInstagram'),
    path('UpdateInstagram/<int:pk>/update', UpdateInstagram.as_view(), name='UpdateInstagram'),
    path('DeleteInstagram/<int:pk>/delete', DeleteInstagram, name='DeleteInstagram'),

    path('UsersOrders', UsersOrders, name='UsersOrders'),
    path('processedOrders', processedOrders, name='processedOrders'),
    path('deliveredOrders', deliveredOrders, name='deliveredOrders'),

    # path('siteSetting/<int:pk>', siteSetting, name='SiteSetting'),
    # path('Blog/<int:pk>/Edit', Blog.as_view(), name='Blog'),

    path('CreateProductOption/', CreateProductOption.as_view(), name='CreateProductOption'),
    path('UpdateProductOption/<int:pk>/update', UpdateProductOption.as_view(), name='UpdateProductOption'),
    path('DeleteProductOption/<int:pk>/delete', DeleteProductOption, name='DeleteProductOption'),
    path('getProductOptions/', getProductOptions, name="getProductOptions"),

    path('CreateSliders/', CreateSliders.as_view(), name='CreateSliders'),
    path('UpdateSliders/<int:pk>/update', UpdateSliders.as_view(), name='UpdateSliders'),
    path('DeleteSliders/<int:pk>/delete', DeleteSliders, name='DeleteSliders'),

    path('CreateRatings/', CreateRatings.as_view(), name='CreateRatings'),
    path('UpdateRatings/<int:pk>/update', UpdateRatings.as_view(), name='UpdateRatings'),
    path('DeleteRatings/<int:pk>/delete', DeleteRatings, name='DeleteRatings'),

    path('changeRatingStatus/<int:pk>', changeRatingStatus, name='changeRatingStatus'),
    path('allUsers', allUsers, name='allUsers'),
  
    # AJAX CALL
    path('getSubcategoryByCategory/', getSubcategoryByCategory, name="getSubcategoryByCategory")

    ]