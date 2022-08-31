from django.conf.urls import url
from cvote import views

urlpatterns=[
    url('^cvote/',views.cvote),
    url('^view/', views.count),
    url('^otp/',views.otp),
    url('vote/(?P<idd>\w+)',views.vote,name='vote'),
    # url('^candidregister/',views.candidregister),
    # url('^viewusercandid/',views.candidview),
    ]