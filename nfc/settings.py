"""
Django settings for nfc project.

Generated by 'django-admin startproject' using Django 3.2.5.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""
import environ
# Initialise environment variables
env = environ.Env()
environ.Env.read_env()

from pathlib import Path
# import os
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = env('SECRET_KEY')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

if DEBUG:
    ALLOWED_HOSTS = ['*']
else:
    ALLOWED_HOSTS = ['nfcliving.co.uk', 'www.nfcliving.co.uk','*']


# CORS_ORIGIN_WHITELIST = [
#     'http://localhost:3000',
# ]

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'crispy_forms',
    'backend',
    'frontend',
    'rest_framework',
    'rest_framework.authtoken',
    'corsheaders'
    # 'home',

    # 'dashboard.contentmanagement.ContentmanagementConfig'
]

CRISPY_TEMPLATE_PACK = 'bootstrap4'

MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'nfc.urls'

REST_FRAMEWORK = {
    # Use Django's standard `django.contrib.auth` permissions,
    # or allow read-only access for unauthenticated users.
     'DEFAULT_AUTHENTICATION_CLASSES': [
        # 'rest_framework.authentication.TokenAuthentication',
        'rest_framework_simplejwt.authentication.JWTAuthentication'
        'rest_framework.authentication.BasicAuthentication',
        'rest_framework.authentication.SessionAuthentication',
    ],
    
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.DjangoModelPermissionsOrAnonReadOnly'
    ],
    'DEFAULT_SCHEMA_CLASS': 'rest_framework.schemas.coreapi.AutoSchema',

   
}


REST_FRAMEWORK = {
    'DEFAULT_PAGINATION_CLASS': 'rest_framework.pagination.PageNumberPagination',
    'PAGE_SIZE': 10
}



TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'backend.context_processors.add_variable_to_context',
            ],
        },
    },
]

WSGI_APPLICATION = 'nfc.wsgi.application'

# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = {
   'default': {
      'ENGINE': 'django.db.backends.mysql',
      'NAME': env("DATABASE_NAME"),
      'USER': env("DATABASE_USER"),
      'PASSWORD':  env("DATABASE_PASS"),
      'HOST': '127.0.0.1',
      'PORT': '3306',
   }
}


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'
MEDIA_URL = '/media/'

LOGIN_REDIRECT_URL = '/' 
LOGOUT_REDIRECT_URL = '/'

if DEBUG:
    MEDIA_ROOT = 'media'
    STATICFILES_DIRS = [BASE_DIR / 'static']
    # STATIC_ROOT = BASE_DIR / 'static'
    
    
else:
    MEDIA_ROOT = '/home/xuoq7grshplc/public_html/media'
    STATIC_ROOT = '/home/xuoq7grshplc/public_html/static'
    # STATIC_ROOT = BASE_DIR / 'static'


# MEDIA_ROOT = '/home/xuoq7grshplc/public_html/media'
# STATIC_ROOT = '/home/xuoq7grshplc/public_html/static'

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
#stripe payment
#stripe payment
if DEBUG:
    STRIPE_PUBLIC_KEY = env("STRIPE_PUBLIC_KEY_TEST")
    STRIPE_SECRET_KEY = env("STRIPE_SECRET_KEY_TEST")
# Uncomment these lines if you have a live keys
else:
    STRIPE_PUBLIC_KEY = env("STRIPE_PUBLIC_KEY_LIVE")
    STRIPE_SECRET_KEY = env("STRIPE_SECRET_KEY_LIVE")


EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = 'intel3xcel@gmail.com'
EMAIL_HOST_PASSWORD = 'intelexcel{}@123'
EMAIL_ADMIN = 'masoodazhar60@gmail.com'