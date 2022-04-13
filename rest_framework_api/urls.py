from posixpath import basename
from rest_framework import routers
from django.urls import path, include
from rest_framework_api import views
# FOR API requests
from rest_framework import routers
from rest_framework_api import views

from .views import MyObtainTokenPairView, RegisterView

# from rest_framework_simplejwt.views import TokenRefreshView
from rest_framework.authtoken.views import obtain_auth_token

from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from rest_framework_simplejwt.views import TokenVerifyView


router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'groups', views.GroupViewSet)
router.register(r'navigation', views.NavbarViewSet )
router.register(r'subnavigation', views.SubNavbarViewSet, )
router.register(r'products', views.ProductViewSet, basename='products')
router.register(r'productsimages', views.ProductImagesViewSet)
router.register(r'blog', views.BlogViewSet)
router.register(r'sitesetting', views.SiteSettingViewSet)
router.register(r'about', views.AboutViewSet)
router.register(r'slider', views.SliderViewSet)
# router.register(r'wishlist', views.WishListViewSet, basename='wishlist')



urlpatterns = [
    path('', include(router.urls)),

    # =====================================================================
    path('wish-list/', views.WishListViewSet),
    # path('site-setting/', views.SiteSettingViewSet),
    # =====================================================================

    path('login/', MyObtainTokenPairView.as_view(), name='token_obtain_pair_'),
    path('register/', RegisterView.as_view(), name='auth_register'),

    # Token Works here
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'), # create a token
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
    path('bearer-token/', obtain_auth_token, name="auth_token"),

    # path('api-auth/', include('rest_framework.urls')),
    # path('login/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    # path('test/', test.as_view(), name='auth_test'),
    
]