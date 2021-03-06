# Generated by Django 3.1.6 on 2022-04-17 20:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0025_auto_20220413_2250'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='is_product_has_colors',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='products',
            name='is_product_has_sizes',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='products',
            name='product_colrs',
            field=models.TextField(blank=True, default=None, null=True, verbose_name='defins colors in comma seperated'),
        ),
        migrations.AddField(
            model_name='products',
            name='product_sizes',
            field=models.TextField(blank=True, default=None, null=True, verbose_name='defins sizes in comma seperated'),
        ),
        migrations.AlterField(
            model_name='productoption',
            name='sub_category',
            field=models.ManyToManyField(null=True, to='backend.NavigationSubMenu', verbose_name='Please Select Sub Category, The option will apply in'),
        ),
        migrations.AlterField(
            model_name='sliders',
            name='slider_image',
            field=models.ImageField(upload_to='uploads', verbose_name='Slider Image (1500 × 750 px)'),
        ),
    ]
