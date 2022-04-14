from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    # NEW DYNAMIC
    path('', views.index, name='index'),
    path('Products/<str:subCateSlug>', views.products, name='products'),
    path('ProductsJQ/', views.getProductByAjax, name='getProductByAjax'),
    path('Products/', views.products, name='productsfilter'),
    path('ProductDetail/<str:subCategorySlug>/', views.productsdetail, name='productsdetail'),
    path('TrackProduct', views.trackProduct, name='trackProduct'),
    path('productRatingSave/', views.productRatingSave, name='productRatingSave'),
    # path('usersignupWeb/', views.signupWeb, name='usersignupWeb'),
    # path('wishlist/', views.wishlist, name='wishlist'),
    # path('about-us/', views.about_us, name='about-us'),
    # path('checkout/', views.checkout, name='checkout'),

    path('create-payment-intent/', views.StripeIntentView.as_view(), name='create-payment-intent'),
    path('TermsAndCondition/', views.termsAndCondition, name='termsAndCondition'),
    path('blog', views.blog, name='blog'),
    path('contact', views.contact, name='contact'),
    path('userprofile/', views.userprofile, name='userprofile'),
    
    # OLD STATIC
    # path('shop', views.shop, name='shop'),
    # path('shop-left-sidebar', views.shop_left_sidebar, name='shop-left-sidebar'),
    # path('portfolio-3-columns', views.portfolio_3_columns, name='portfolio-3-columns'),
    # path('shop-filter-options', views.shop_filter_options, name='shop-filter-options'),
    # path('shop-right-sidebar', views.shop_right_sidebar, name='shop-right-sidebar'),
    # path('shopping-cart', views.shopping_cart, name='shopping-cart'),
    # path('shop-full-width-layout', views.shop_full_width_layout, name='shop-full-width-layout'),
    # path('product-detail-layout-01', views.product_detail_layout_01, name='product-detail-layout-01'),
    # path('contact-us', views.contact_us, name='contact-us'),
    # path('faqs-2', views.faqs_2, name='faqs-2'),
    # path('my-account', views.my_account, name='my-account'),
    # path('returns-exchanges', views.returns_exchanges, name='returns-exchanges'),

    # path('CreateAddressBook/', CreateAddressBook.as_view(), name='CreateAddressBook'),
    # path('UpdateAddressBook/<int:pk>/update', UpdateAddressBook.as_view(), name='UpdateAddressBook'),
    # path('DeleteAddressBook/<int:pk>/delete', DeleteAddressBook.as_view(), name='DeleteAddressBook'),
    

    # CART SECTION
    # path('product/<pk>/', ProductView.as_view(), name='product'),
    path('ViewCart/', views.viewCart, name='view-cart'),
    path('Checkout/', views.checkout, name='checkout'),
    path('MyOrders/', views.myOrders, name='myOrders'),
    path('add-to-cart/<pk>/', views.add_to_cart, name='add-to-cart'),
    path('remove-from-cart/<pk>/', views.remove_from_cart, name='remove-from-cart'),
    path('add_to_cart_increse/<pk>', views.add_to_cart_increse, name='add_to_cart_increse'),
    path('reduce_quantity_item/<pk>/', views.reduce_quantity_item, name='reduce_quantity_item'),
    # path('checkouts/', CheckoutView.as_view(), name='checkouts'),
    # path('payment/<payment_option>/', PaymentView.as_view(), name='payment'),
    # # AJAX SEARCH FOR PRODUCTS FROM HOME MAIN SEARCH FILTER
    path('searchProducts/', views.searchProducts, name='searchProducts'),
    # path('addtowishlist/<int:pk>', addtowishlist, name='addtowishlist'),
    # path('removetowishlist/<int:pk>', removetowishlist, name='removetowishlist'),
    
    
    path('customerLogin', views.customerLogin, name='customerLogin'),
    path('userlogin/', views.loginUser, name='userlogin'),
    path('usersignup/', views.signup, name='usersignup'),
    path('sendMail/', views.sendMail, name='sendMail'),

]
