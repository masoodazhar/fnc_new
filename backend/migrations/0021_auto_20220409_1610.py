# Generated by Django 3.1.6 on 2022-04-09 11:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0020_auto_20220409_1552'),
    ]

    operations = [
        migrations.AddField(
            model_name='sitesetting',
            name='footer_background',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='header_background',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='heading_color',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='icons_color',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='nav_header_fixed_color_backgroud',
            field=models.CharField(default='lightblue', max_length=10, verbose_name='Nav header backgroud color when scrolled down'),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='nav_text_color',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='nav_text_mouse_hover_color',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AddField(
            model_name='sitesetting',
            name='text_color',
            field=models.CharField(default='lightblue', max_length=10),
        ),
        migrations.AlterField(
            model_name='sitesetting',
            name='theme_color',
            field=models.CharField(default='#1e90ff', max_length=10),
        ),
    ]
