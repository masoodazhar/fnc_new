from queue import Empty
from django.db import models
from django.urls import reverse
from django.contrib.auth.models import User
# Create your models here.
from django.db.models.signals import post_save
from django.dispatch import receiver

"""Declare models for YOUR_APP app."""
from django.conf import settings
from django_countries.fields import CountryField
import uuid
from django.template.defaultfilters import slugify


class About(models.Model):
    name = models.CharField(max_length=255)
    designation = models.CharField(max_length=100)
    contact = models.CharField(max_length=50)
    description = models.TextField()
    category = models.CharField(max_length=100,choices=[('Full', 'Full Area And Center'), ('Half', 'Half Area Left')])
    image = models.ImageField(upload_to='about', default='nomployee.png')
    facebook = models.CharField(max_length=255, default='https://www.facebook.com')
    instagram = models.CharField(max_length=255, default='https://www.instagram.com')
    twitter = models.CharField(max_length=255, default='https://twitter.com')
    linkedin = models.CharField(max_length=255, default='https://www.linkedin.com')

    class Meta:
        db_table= 'about'

    def __str__(self) -> str:
        return self.parent_menu

    def get_absolute_url(self):
        return reverse('CreateAbout')



# Create your models here.
productsTypes = [('Trending', 'Trending'),('Features', 'Features'),('Best Seller', 'Best Seller'), ('Latest Product', 'Latest Product')]
sizes = [('S', 'S'), ('M', 'M'), ('L', 'L'), ('XL', 'XL')]
location = [('Feature', 'Feature'), ('Menu', 'Menu'), ('Offer', 'Offer'), ('Discount', 'Discount')]

class NavigationMenu(models.Model):
    parent_menu = models.CharField(max_length=100)
    short_detail = models.CharField(max_length=255, default='', blank=True)
    # location = models.CharField(max_length=30, choices=location, default='Menu')
    # has_features = models.BooleanField('If yes it will be show on Home Page as "MAIN PRODUCTS"',default=False)
    has_products = models.BooleanField('If yes, product will be display in home page in our products section.',default=False)
    # category_image = models.ImageField(upload_to='uploads', default='noimage.png')
    icon = models.CharField(max_length=255, blank=True, default='noicon')
    
    class Meta:
        db_table= 'navigationmenu'
        ordering = ['id']

    def __str__(self) -> str:
        return self.parent_menu

    def slugUrl(self):
        return self.parent_menu.replace(' ', '-')

    def get_absolute_url(self):
        return reverse('CreateNavigationMenu')

class NavigationSubMenu(models.Model):
    parent_menu = models.ForeignKey(NavigationMenu, on_delete=models.CASCADE, related_name='children_navbar')
    sub_menu = models.CharField(max_length=100, unique=True)
    sub_menu_slug = models.SlugField('Sub menu slug (leave blank will auto fill.)', null=True, default="", blank=True)
    status = models.CharField('For Menu, Both Home and Menu',max_length=2,default='1', choices=[('1','Menu'), ('0','Both Home and Menu')])
    icon = models.CharField(max_length=255, blank=True, default='noicon')
    class Meta:
        db_table= 'navigationsubmenu'
        ordering = ['id']

    def __str__(self) -> str:
        return self.sub_menu

    def slugUrl(self):
        return self.sub_menu.replace(' ', '-')

    def get_absolute_url(self):
        return reverse('CreateNavigationSubMenu')

    def save(self, *args, **kwargs): # new
        if not self.sub_menu_slug:
            self.sub_menu_slug = slugify(self.sub_menu)
        return super().save(*args, **kwargs)


class Products(models.Model):
    category = models.ForeignKey(NavigationMenu, on_delete=models.CASCADE)
    sub_category = models.ForeignKey(NavigationSubMenu, on_delete=models.CASCADE, related_name='children_peoducts')
    name = models.CharField(max_length=150)
    price = models.FloatField()
    # products_type = models.CharField(max_length=20, choices=productsTypes)
    size = models.CharField('Size (also use for filter)',max_length=50)
    sku = models.CharField(max_length=50)
    description = models.TextField(default='No Description')
    display_in_navbar = models.BooleanField(default=False)
    active_feature = models.CharField('Active Feature (show on top of product like BAG, )',max_length=20, default='New')
    product_image = models.ImageField('Product Image (640, 480 px)',upload_to='uploads', default='noimage.png')
    has_discount = models.BooleanField(default=False)
    discoun_price = models.FloatField('minus discount from total price',default=0)
    display_in_home = models.BooleanField(default=False)
    other_options = models.TextField(default=None, blank=True, null=True)
    product_slug_url = models.CharField(max_length=255, default='', blank=True, null=True)
    is_product_has_sizes = models.BooleanField(default=False)
    is_product_has_colors = models.BooleanField(default=False)
    product_sizes = models.CharField('defins sizes in comma seperated', max_length=255, default=None, blank=True, null=True)
    product_colors = models.CharField('defins colors in comma seperated', max_length=255, default=None, blank=True, null=True)
    is_product_has_back_cushions = models.BooleanField(default=False)
    product_back_cushions = models.CharField('defins back cushions in comma seperated', max_length=255, default=None, blank=True, null=True)

    class Meta:
        unique_together = ('name', 'sub_category',)
        db_table= 'products'
        ordering = ['-id']


    def __str__(self) -> str:
        return self.name

    def slugUrl(self):
        return self.product_slug_url

    def getDummySlugUrl(self):
        return self.name.lower().replace(' ', '-')

    def get_original_price(self):
        return "{:.2f}".format(self.price)

    def get_discounted_price(self):
        if self.has_discount:
            total = self.price - self.discoun_price
            return "{:.2f}".format(total)
        else:
            return self.price

    def get_add_to_cart_url(self):
        return reverse("add-to-cart", kwargs={
            "pk" : self.pk
        })

    def get_remove_from_cart_url(self):
        return reverse("remove-from-cart", kwargs={
            "pk" : self.pk
        })

    def get_pro_detail_url(self):
        return reverse("productsdetail", kwargs={
            "subCategorySlug": self.slugUrl()
        })

    def get_discounted_percent(self):
        total = (self.discoun_price/self.price)*100
        return int(total)

    def save(self, *args, **kwargs):
        self.product_slug_url = slugify(self.name+' '+self.sub_category.sub_menu)
        return super().save(*args, **kwargs)

    

    def get_redirect_url(self):
        return reverse("UpdateProducts", kwargs={
            "pk" : self.pk
        })
        
class ProductImages(models.Model):
    product = models.ForeignKey(Products, on_delete=models.CASCADE, related_name='products_images')
    image = models.ImageField('Product Image (640, 480 px)', upload_to='uploads', blank=True)
    color = models.CharField(max_length=50)
    display_place = models.CharField(max_length=20, choices=[("0", "Regular Image"), ("1", "Descriptive Image") ],  default="0")
    
    class Meta:
        db_table= 'productsimages'
        ordering = ['-id']

stars = [
    ('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
]

class Rating(models.Model):
    name = models.CharField(max_length=100)
    date = models.DateTimeField(auto_now_add=True)
    description = models.TextField()
    stars = models.CharField(max_length=2, choices=stars, blank=True)
    type = models.IntegerField(default=0) # user or admin. 0 for user 1 for admin
    product_id = models.ForeignKey(Products, on_delete=models.CASCADE, blank=True) # product id
    answer_of = models.IntegerField(default=0)
    status = models.IntegerField(default=1)

    class Meta:
        db_table = 'rating'

    def get_absolute_url(self):
        return reverse('CreateRatings')

    

class Blog(models.Model):
    by = models.ForeignKey(User, on_delete=models.CASCADE)
    product_category = models.ForeignKey(NavigationSubMenu, on_delete=models.CASCADE)
    in_products = models.ManyToManyField(Products, verbose_name='Select List of products')
    heading = models.CharField(max_length=30)
    date = models.DateField()
    description = models.TextField()
    # display_on = models.CharField(max_length=10, choices=[('Top', 'Top in Slider Section'), ('Down', 'Down in Card Section')])
    image = models.ImageField('Image (1440 × 1440 px)',upload_to='blogs')

    class Meta:
        db_table= 'blog'
        ordering = ['-id']

    def __str__(self) -> str:
        return self.heading

    def get_absolute_url(self):
        return reverse('CreateBlog')
        

class SiteSetting(models.Model):
    email = models.EmailField()
    contact = models.CharField(max_length=30)
    address = models.CharField(max_length=255)
    facebook = models.CharField(max_length=200, default='https://www.facebook.com')
    twitter = models.CharField(max_length=200, default='https://twitter.com')
    instagram = models.CharField(max_length=200, default='https://instagram.com')
    linkedin = models.CharField(max_length=200, default='https://www.linkedin.com')
    pinterest = models.CharField(max_length=200, default='https://www.pinterest.com')
    logo = models.ImageField('Logo (150 × 150 px)',upload_to="uploads", default="noImage.png", blank=True)
    slider_video_link = models.CharField(max_length=255, default='https://nfc.intelexcel.com/vid.mp4')
    slider_type = models.IntegerField(choices=[(0 ,'Video'), (1, 'Slided Images')], default=0)
    terms_and_condion = models.TextField(blank=True, default='A liability disclaimer is a statement from your business that denies responsibility for damages that your visitors may suffer as a result of using your service.')
    working_hours = models.TextField(blank=True, default='')
    discount_banner = models.ImageField('Home discount banner (1139 × 76 px)',upload_to='discount_banner', default='noimage.png')
    should_display_banner = models.BooleanField(default=False)
    # ===================COLORS===============================
    theme_color = models.CharField('Theme text colors',max_length=10, default="#1e90ff")
    header_background = models.CharField(max_length=10, default="lightblue")
    footer_background = models.CharField(max_length=10, default="lightblue")
    nav_header_fixed_color_backgroud = models.CharField('Nav header backgroud color when scrolled down', max_length=10, default="lightblue")
    heading_color = models.CharField(max_length=10, default="lightblue")
    nav_text_color = models.CharField('Nav and footer text color',max_length=10, default="lightblue")
    nav_text_mouse_hover_color = models.CharField(max_length=10, default="lightblue")
    icons_color = models.CharField(max_length=10, default="lightblue")
    theme_background_color_1 = models.CharField(max_length=10, default="#56CCF2")
    theme_background_color_2 = models.CharField(max_length=10, default="#2F80ED")
    icons_color = models.CharField(max_length=10, default="lightblue")

    theme = models.CharField(max_length=2, default="1", choices=[('1', 'Theme 1'), ('2', 'Theme 2')])

    # =================== background images ================
    blog_page_head_image = models.ImageField('Blog page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    product_list_page_head_image = models.ImageField('Product list page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    product_detail_page_head_image = models.ImageField('Product detail page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    view_cart_page_head_image = models.ImageField('View cart page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    payment_delivery_page_head_image = models.ImageField('Payment delivery (checkout) page head image  (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    receipt_page_head_image = models.ImageField('Receipt page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    trackeing_page_head_image = models.ImageField('Trackeing page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    orders_page_head_image = models.ImageField('Orders page head image (1920 × 300 px)',upload_to='page_headings', default='noimage.png')
    login_background_image = models.ImageField('Login background image (1920 × 1100 px)',upload_to='page_headings', default='noimage.png')
    login_page_side_detail = models.TextField(default='', blank=True)
    # Contact us information
    

    class Meta:
        db_table= 'sitesetting'
        ordering = ['-id']

    def get_absolute_url(self):
        return reverse('contentmanagement')


class ProductOption(models.Model):
    name = models.CharField(max_length=100)
    sub_category = models.ManyToManyField(NavigationSubMenu, null=True, verbose_name="Please Select Sub Category, The option will apply in")
    type = models.CharField(max_length=20, choices=[
        # ("text", "Text") ,
        # ("file", "Select File (images etc)"),
        ("text", "Display as text"),
        ("color", "Display as color"),
        ])
    options = models.CharField('Comma seperated values, options are only for (select type)', max_length=255, blank=True)

    class Meta:
        db_table= 'productoption'
        ordering = ['-id']

    def get_absolute_url(self):
        return reverse('CreateProductOption')

        

"""
MANAGE THE FRONEND SECTION DATA
"""
class Profile(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=150, blank=True)
    last_name = models.CharField(max_length=150, blank=True)
    mobile = models.CharField(max_length=30, blank=True)
    birthday = models.CharField(max_length=30, blank=True)
    gender = models.CharField(max_length=10,choices=[('Male', 'Male'), ('Female', 'Female')] )

    class Meta:
        db_table= 'profile'
        ordering = ['-id']

    def __str__(self) -> str:
        return f'{self.first_name} {self.last_name}'


class AddressBook(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    full_name = models.CharField(max_length=150)
    company_name = models.CharField('Company name (optional)',max_length=150, blank=True)
    country = CountryField(multiple=False, blank=True)
    city = models.CharField(max_length=30, blank=True)
    address = models.TextField()
    state = models.CharField(max_length=30, blank=True)
    zip = models.CharField('Postal/Zip Code',max_length=30)
    phone = models.CharField(max_length=30)
    email = models.CharField(max_length=100)
    effective_delivery = models.CharField('effective delivery:', max_length=20, choices=[('Office', 'Office'), ('Home', 'Home')])
    order_notes = models.CharField('Notes about your order (optional), e.g. special notes for delivery.', max_length=255, blank=True)

    class Meta:
        db_table= 'addressbook'
        ordering = ['-id']

    def __str__(self) -> str:
        return f'{self.full_name}, {self.province}, {self.city}'

    def get_absolute_url(self):
        return reverse('CreateAddressBook')

CATEGORY = (
    ('S', 'Shirt'),
    ('SP', 'Sport Wear'),
    ('OW', 'Out Wear')
)

LABEL = (
    ('N', 'New'),
    ('BS', 'Best Seller')
)

ORDER_STATUS = (
    ('Pending', 'Pending'),
    ('In Progress', 'In Progress'),
    ('Succeeded', 'Succeeded'),
    ('On The Way', 'On The Way'),
    ('Delivered', 'Delivered')
)


class CheckoutAddress(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    street_address = models.CharField(max_length=100)
    apartment_address = models.CharField(max_length=100)
    country = CountryField(multiple=False)
    zip = models.CharField(max_length=100)

    class Meta:
        db_table = 'checkoutaddress'
        ordering = ['-id']

    def __str__(self):
        return self.user.username
    

class WishList(models.Model):
    productid = models.ForeignKey(Products, on_delete=models.CASCADE)
    ip = models.CharField(max_length=50)
    status = models.IntegerField(default=0, blank=True, null=True)

    class Meta:
        db_table = 'wishlist'

    def __str__(self):
        return str(self.productid)

class Sliders(models.Model):
    slider_image = models.ImageField('Slider Image (1500 × 750 px)',upload_to='uploads')
    short_name = models.CharField('Short Appearance Name - like Seasion ETC',max_length=100)
    short_Hesding = models.CharField('Short Detail, Headings ETC', max_length=100)
    explore_to = models.ForeignKey(NavigationSubMenu, on_delete=models.CASCADE,verbose_name='User May Explore Related Products, Containing This Category', default=1)
    status = models.BooleanField('Active / Deactive', default=True)

    class Meta:
        db_table= 'sliders'
        ordering = ['-id']

    def __str__(self) -> str:
        return self.short_Hesding

    def get_absolute_url(self):
        return reverse('CreateSliders')


"""
SHopping and Orders Area
"""
class Payment(models.Model):
    stripe_id = models.CharField(max_length=50)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, 
                             on_delete=models.SET_NULL, blank=True, null=True)
    amount = models.FloatField()
    timestamp = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'payment'
        ordering = ['-id']

    def __str__(self):
        return self.user.username


class OrderItem(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL,  on_delete=models.CASCADE)
    ordered = models.BooleanField(default=False)
    item = models.ForeignKey(Products, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    size_with_price = models.CharField(max_length=100, default=None, null=True)
    color = models.CharField(max_length=100, default=None, null=True)
    back_cushions = models.CharField(max_length=100, default=None, null=True)

    def __str__(self):
        return f"{self.quantity} of {self.item.name}"

    def get_total_item_price(self):
        return "{:.2f}".format(self.quantity * self.item.price)

    def get_discount_item_price(self):
        discounted = self.item.price - self.item.discoun_price
        return "{:.2f}".format(self.quantity * discounted)

    def get_amount_saved(self):
        return "{:.2f}".format(self.get_total_item_price() - self.get_discount_item_price())

    def get_final_price(self):
        if self.item.discoun_price:
            return float(self.get_discount_item_price())
        return float(self.get_total_item_price())

    def get_sizes_price(self):
        if self.size_with_price != '' and self.size_with_price != None:
            size, price = self.size_with_price.split('+')
            return price
        else:
            return 0

    def get_sizes_info(self):
        if self.size_with_price != '' and self.size_with_price != None:
            size, price = self.size_with_price.split('+')
            return size
        else:
            return 'default Size'
            

    

    class Meta:
        db_table = 'orderitem'
        ordering = ['-id']
    

class Order(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    items = models.ManyToManyField(OrderItem)
    start_date = models.DateTimeField(auto_now_add=True)
    ordered_date = models.DateTimeField()
    tracking_id = models.CharField(max_length=100, blank=True, unique=True, default=uuid.uuid4)
    ordered = models.BooleanField(default=False)
    checkout_address = models.ForeignKey('AddressBook', on_delete=models.SET_NULL, blank=True, null=True)
    payment = models.ForeignKey('Payment', on_delete=models.SET_NULL, blank=True, null=True)
    # option_options = models.TextField(blank=True, null=True, default=[])

    class Meta:
        db_table = 'order'
        ordering = ['-id']

    def __str__(self):
        return self.user.username
    def get_sizes_total_price(self):
        total = 0
        for order_item in self.items.all():
            if order_item.get_sizes_price() != 0:
                total += int(order_item.get_sizes_price())

        return total

    def get_total_price(self):
        total = 0
        for order_item in self.items.all():
            total += order_item.get_final_price()
        return "{:.2f}".format(total+self.get_sizes_total_price())

    

class Item(models.Model):
    item_name = models.CharField(max_length=100)
    price = models.FloatField()
    discount_price = models.FloatField(blank=True, null=True)
    category = models.CharField(choices=CATEGORY, max_length=2)
    label = models.CharField(choices=LABEL, max_length=2)
    description = models.TextField()

    class Meta:
        db_table = 'item'

    def __str__(self):
        return self.item_name

    def get_absolute_url(self):
        return reverse("product", kwargs={
            "pk" : self.pk
        
        })

    def get_add_to_cart_url(self):
        return reverse("add-to-cart", kwargs={
            "pk" : self.pk
        })
    

    def get_remove_from_cart_url(self):
        return reverse("remove-from-cart", kwargs={
            "pk" : self.pk
        })


class OrderStatus(models.Model):
    orderid = models.OneToOneField(Order, on_delete=models.CASCADE)
    status = models.CharField(max_length=50, choices=ORDER_STATUS)
    deliverd_date = models.DateTimeField()

    class Meta:
        db_table = 'orderstatus'

    def __str__(self):
        return str(self.orderid)


class SeasionSale(models.Model):
    heading = models.CharField(max_length=150)
    subcategory = models.ForeignKey(NavigationSubMenu, on_delete=models.CASCADE, verbose_name='Product Category sales in?')
    image = models.ImageField('Image (420 × 315 px)',upload_to='uploads')

    class Meta:
        db_table= 'seasionsale'

    def get_absolute_url(self):
        return reverse('CreateSeasionSale')

class Instagram(models.Model):
    image = models.ImageField('Image (223 × 223 px)',upload_to='instagram')

    class Meta:
        db_table= 'instagram'

    def get_absolute_url(self):
        return reverse('CreateInstagram')