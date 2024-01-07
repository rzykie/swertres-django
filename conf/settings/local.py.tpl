"""
Local settings. This is file is required so that the django app can execute
"""
from __future__ import absolute_import

from .defaults import *


DEBUG = True

INSTALLED_APPS += [
    'django_extensions',
]

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


####################################################################################################
# Database
####################################################################################################
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "swertres",
        "USER": "swertres",
        "PASSWORD": "swertres",
        "HOST": "",
        "PORT": "",
    }
}
