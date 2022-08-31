from django.conf.urls import url
from candidate import views

urlpatterns=[
    url('^manage',views.viewcandid),
    url('^candidregister/',views.candidregister),
    url('^viewusercandid/',views.candidview),
    url('apprv(?P<idd>\w+)',views.aprove,name="caprv"),
    url('rej(?P<idd>\w+)',views.reject,name="crej"),
    ]