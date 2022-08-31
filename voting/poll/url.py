from django.conf.urls import url
from poll import views

urlpatterns=[
    url('^poll',views.view_poll),
    ]