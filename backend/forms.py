from django import forms
from django.db.models import fields
from .models import Blog, ProductImages, Products, AddressBook, OrderStatus, Rating
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
# from django_countries.fields import CountryField
# from django_countries.widgets import CountrySelectWidget

class ProductsForm(forms.ModelForm):
    # color = forms.CharField(widget=forms.TextInput(attrs={'type':'color', 'name': 'color[]'}))
    
    class Meta:
        model = Products
        fields = '__all__'

class ProductImagesForm(forms.ModelForm):
    # color = forms.CharField(widget=forms.TextInput(attrs={'type':'color', 'name': 'color[]'}))
    image = forms.CharField(required=False, widget=forms.TextInput(attrs={'type':'file', 'multiple':' multiple'}))
    class Meta:
        model = ProductImages
        fields = ['image']


class BlogForm(forms.ModelForm):
    class Meta:
        model = Blog
        fields = '__all__'


class RatingForm(forms.ModelForm):
    class Meta:
        model = Rating
        fields = '__all__'

"""
FRONT END SECTION
"""

PAYMENT = (
    ('S', 'Stripe'),
    ('P', 'PayPal')
)

class CheckoutForm(forms.ModelForm):
    same_billing_address = forms.BooleanField(required=False)
    save_info = forms.BooleanField(required=False)
    payment_option = forms.ChoiceField(widget=forms.RadioSelect, choices=PAYMENT)
    
    class Meta:
        model = AddressBook
        fields = '__all__'
        
class SignUpForm(UserCreationForm):
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')

    class Meta:
        model = User
        fields = ( 'email','username', 'password1', 'password2', )


prices = [price for price in range(1, 8, 50)]

class FilterForm(forms.Form):
    price_Filter = forms.MultipleChoiceField(choices=prices)


class OrderStatusForm(forms.ModelForm):
    
    class Meta:
        model = OrderStatus
        fields = '__all__'



