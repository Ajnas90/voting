from django.shortcuts import render
import datetime
from publish.models import Result
# Create your views here.
def publish(request):
    if request.method=="POST":
        ob=Result()
        ob.result=request.POST.get('result')
        ob.date=datetime.datetime.today()
        ob.time=datetime.datetime.today()
        ob.save()
    return render(request, 'result/result.html')

def candid_view(request):
    obb=Result.objects.all()
    context={
        'obj':obb
    }
    return render(request,'result/view_candid_result.html',context)

def user_view(request):
    obb=Result.objects.all()
    context={
        'obj':obb
    }
    return render(request,'result/view_user_result.html',context)