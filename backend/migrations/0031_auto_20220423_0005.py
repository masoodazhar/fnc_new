# Generated by Django 3.1.6 on 2022-04-22 19:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0030_auto_20220419_2225'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='products',
            unique_together={('name', 'sub_category')},
        ),
    ]
