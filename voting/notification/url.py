from django.conf.urls import url
from notification import views

urlpatterns=[
    url('^notifi/',views.notifi),
    url('^view_candid/',views.view_candid),
    url('^userview/',views.view_user),
    url(r'^android/', views.noti_view.as_view()),
    ]