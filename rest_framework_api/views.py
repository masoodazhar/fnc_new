from django.contrib.auth.models import User, Group
from django.http.response import JsonResponse
from backend.models import About, Blog,  NavigationMenu, NavigationSubMenu, ProductImages, Products, SiteSetting, Sliders, WishList
from rest_framework import viewsets
from rest_framework_api.backendSerializers import NavbarSerializer, NavbarSubSerializer, ProductImagesSerializer, ProductsSerializer, UserSerializer, GroupSerializer
from .backendSerializers import AboutSerializer, BlogSerializer, MyTokenObtainPairSerializer, RegisterSerializer, SiteSettingSerializer, SliderSerializer, WishListSerializer
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView
from rest_framework import generics 
from rest_framework.authentication import TokenAuthentication

# ====================================
from rest_framework.permissions import IsAuthenticated

# ====================================
from rest_framework import status
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.response import Response
from rest_framework.views import APIView
from django.shortcuts import get_object_or_404


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Group.objects.all()
    serializer_class = GroupSerializer


class MyObtainTokenPairView(TokenObtainPairView):
    """
    API, login
    """
    permission_classes = (AllowAny,)
    serializer_class = MyTokenObtainPairSerializer


class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = (AllowAny,)
    serializer_class = RegisterSerializer
    

class AboutViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = About.objects.all()
    serializer_class = AboutSerializer


class BlogViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Blog.objects.all()
    serializer_class = BlogSerializer


class NavbarViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = NavigationMenu.objects.all()
    serializer_class = NavbarSerializer


class SubNavbarViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = NavigationSubMenu.objects.all()
    serializer_class = NavbarSubSerializer


class ProductViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        subcategory = self.request.query_params.get('subcategory')

        queryset = Products.objects.filter(sub_category=subcategory)

        return queryset
    # queryset = Products.objects.all()
    serializer_class = ProductsSerializer


class ProductImagesViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = ProductImages.objects.all()
    serializer_class = ProductImagesSerializer


class SiteSettingViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = SiteSetting.objects.all()
    serializer_class = SiteSettingSerializer


class SliderViewSet(viewsets.ModelViewSet):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Sliders.objects.all()
    serializer_class = SliderSerializer


@api_view(['GET', 'POST'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def WishListViewSet(request):
    if request.method == 'GET':
        wishlist = WishList.objects.all()
        serializer = WishListSerializer()
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = WishListSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'POST'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def WishListViewSet(request):
    if request.method == 'GET':
        wishlist = WishList.objects.all()
        serializer = WishListSerializer()
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = WishListSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)