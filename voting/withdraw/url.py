from django.conf.urls import url
from withdraw import views

urlpatterns=[
    url('^withdraw',views.withdraw),
    url('delete/(?P<idd>\w+)',views.delete,name='dlt'),
    # url('withdraw(?P<idd>\w+)', views.aprove, name="withdraw"),
    url('^cwithd',views.aprove),
]
