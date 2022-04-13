from django.contrib.auth.models import User, Group
from backend.models import About, Blog, DiscountAlert, HomeMainFeature, MostNeededProducts, NavigationMenu, NavigationSubMenu, ProductImages, Products, SeasionSale, SiteSetting, Sliders
from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer


from rest_framework.validators import UniqueValidator
from django.contrib.auth.password_validation import validate_password

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    """
    Login API
    """
    @classmethod
    def get_token(cls, user):
        token = super(MyTokenObtainPairSerializer, cls).get_token(user)

        # Add custom claims
        token['username'] = user.username
        return token

class RegisterSerializer(serializers.ModelSerializer):
    """
    Register user API
    """
    email = serializers.EmailField(
            required=True,
            validators=[UniqueValidator(queryset=User.objects.all())]
            )

    password = serializers.CharField(write_only=True, required=True, validators=[validate_password])
    password2 = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = User
        fields = ('username', 'password', 'password2', 'email', 'first_name', 'last_name')
        extra_kwargs = {
            'first_name': {'required': True},
            'last_name': {'required': True}
        }

    def validate(self, attrs):
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError({"password": "Password fields didn't match."})

        return attrs

    def create(self, validated_data):
        user = User.objects.create(
            username=validated_data['username'],
            email=validated_data['email'],
            first_name=validated_data['first_name'],
            last_name=validated_data['last_name']
        )

        
        user.set_password(validated_data['password'])
        user.save()

        return user

class SlidersSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Sliders
        fields = '__all__'

class AboutSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = About
        fields = '__all__'

class BlogSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Blog
        fields = '__all__'

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']


class ProductImagesSerializer(serializers.HyperlinkedModelSerializer):
    product = serializers.PrimaryKeyRelatedField(queryset=ProductImages.objects.all(),source='product.id')
    
    class Meta:
        model = ProductImages
        fields = ('url','id','product','image','color')



class ProductsSerializer(serializers.HyperlinkedModelSerializer):
    sub_category = serializers.PrimaryKeyRelatedField(queryset=Products.objects.all(),source='sub_category.id')
    products_images = ProductImagesSerializer(many=True, read_only=True)

    class Meta:
        model = Products
        fields = ('url','id','sub_category','name','price','size','sku','description','display_in_navbar','active_feature','product_image','has_discount','discoun_price','display_in_home','products_images')

class NavbarSubSerializer(serializers.HyperlinkedModelSerializer):
    parent_menu = serializers.PrimaryKeyRelatedField(queryset=NavigationSubMenu.objects.all(),source='parent_menu.id')
    children_peoducts = ProductsSerializer(many=True, read_only=True)
    
    class Meta:
        model = NavigationSubMenu
        fields = ('url','id','parent_menu','sub_menu','status','children_peoducts')

    # def create(self, validated_data):
    #     subject = NavigationSubMenu.objects.create(parent=validated_data['parent_menu']['id'], child_name=validated_data['child_name'])
    #     return NavigationSubMenu

class NavbarSerializer(serializers.HyperlinkedModelSerializer):
    children = NavbarSubSerializer(many=True, read_only=True)
    class Meta:
        model = NavigationMenu
        fields = ('url','id','parent_menu','short_detail','location','has_products','children')

class HomeMainFeatureSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = HomeMainFeature
        fields = '__all__'

class MostNeededProductsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = MostNeededProducts
        fields = '__all__'


class SiteSettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = SiteSetting
        fields = '__all__'

class SeasionSaleSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = SeasionSale
        fields = '__all__'