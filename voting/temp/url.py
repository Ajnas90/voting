from django.conf.urls import url
from temp import views

urlpatterns=[
    url('^index/',views.index),
    url('^admin/',views.admin),
    url('^candid/',views.candidate),
    url('^user/',views.user),
    ]