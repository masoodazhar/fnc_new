# Generated by Django 3.1.6 on 2022-04-09 07:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0017_rating_product_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rating',
            name='product_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='backend.products'),
        ),
    ]
