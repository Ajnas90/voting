from django.shortcuts import render
import datetime
from notification.models import Notification
# Create your views here.
def notifi(request):
    if request.method=="POST":
        ob=Notification()
        ob.notification=request.POST.get('notifi')
        ob.date=datetime.datetime.today()
        ob.time=datetime.datetime.today()
        ob.save()
    return render(request, 'notifi/notification.html')

def view_candid(request):
    ob=Notification.objects.all()
    context={
        'obj':ob
    }
    return render(request,'notifi/view_noti.html',context)

def view_user(request):
    obb=Notification.objects.all()
    context={
        'obj':obb
    }
    return render(request,'notifi/user_view.html',context)

from rest_framework.views import APIView,Response
from user.serializers import android_serialiser


class noti_view(APIView):
    def get(self, request):
        ob = Notification.objects.all()
        ser = android_serialiser(ob, many=True)
        return Response(ser.data)