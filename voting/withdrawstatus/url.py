from django.conf.urls import url
from withdrawstatus import views

urlpatterns=[
    url('^ws/',views.wstatus),
    # url('^view_candid/',views.view_candid),
    # url('^userview/',views.view_user),
    # url(r'^android/', views.noti_view.as_view()),
]