# Generated by Django 3.1.6 on 2022-04-09 01:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0014_auto_20220409_0614'),
    ]

    operations = [
        migrations.AddField(
            model_name='rating',
            name='answer_of',
            field=models.IntegerField(default=0),
        ),
    ]
