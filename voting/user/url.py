from django.conf.urls import url
from user import views

urlpatterns=[
    url('^userreg/',views.user_reg),
    url('^viewuser/',views.viwe_user),
    url('arv/(?P<idd>\w+)',views.aprove,name='aprv'),
    url('rej/(?P<idd>\w+)',views.reject,name='reject'),
    url(r'^android/', views.user_view.as_view()),
    ]