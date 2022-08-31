from django.conf.urls import url
from votingstatus import views

urlpatterns=[
    url('^status/',views.status),
    # url('^view_candid/',views.view_candid),
    # url('^userview/',views.view_user),
    # url(r'^android/', views.noti_view.as_view()),
]