from django.conf.urls import url
from result import views

urlpatterns=[
    url('^result/',views.result),
]