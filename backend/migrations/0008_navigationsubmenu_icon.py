# Generated by Django 3.1.6 on 2022-03-24 19:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0007_auto_20220323_0122'),
    ]

    operations = [
        migrations.AddField(
            model_name='navigationsubmenu',
            name='icon',
            field=models.CharField(blank=True, default='0', max_length=255),
        ),
    ]
