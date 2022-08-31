from django.conf.urls import url
from publish import views

urlpatterns=[
    url('^result/',views.publish),
    url('^viewcandid/',views.candid_view),
    url('^userview/',views.user_view),
    ]