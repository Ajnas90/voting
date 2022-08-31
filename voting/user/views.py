from django.http import HttpResponse
from django.shortcuts import render
from user.models import User
from login.models import Login
from user.models import Aadhar
# Create your views here.
def user_reg(request):
    if request.method=="POST":
        ad=request.POST.get('Aadhar')
        obad=Aadhar.objects.filter(aadharnumber=ad)
        print(len(obad))
        if len(obad)>0:
            # if int(obad[2])>18:

            ob=User()
            ob.username=request.POST.get('name')
            ob.password=request.POST.get('Password')
            ob.email=request.POST.get('Email')
            ob.address=request.POST.get('Address')
            ob.phone_no=request.POST.get('phoneno')
            ob.gender=request.POST.get('gen')
            ob.save()
            obb=Login()
            obb.username=ob.username
            obb.password=ob.password
            obb.u_id=ob.user_id
            obb.type='user'
            obb.save()
        else:
            context = {
                "err": "Invalid Aadhar"
            }
            return render(request, 'user/user_reg.html', context)
        # else:
        #     context={
        #         "err": "Invalid Aadhar"
        #     }
        #     return render(request, 'user/user_reg.html',context)

    return render(request,'user/user_reg.html')

def viwe_user(request):
    ob = User.objects.all()
    context = {
        'obj': ob
    }
    return render(request,'user/view_user.html',context)

def aprove(request,idd):
    obj=User.objects.get(user_id=idd)
    obj.status='aprove'
    obj.save()
    return  viwe_user(request)
def reject(request,idd):
    obj=User.objects.get(user_id=idd)
    obj.status='reject'
    obj.save()
    return viwe_user(request)
from rest_framework.views import APIView,Response
from user.serializers import android_serialiser


class user_view(APIView):
    def get(self, request):
        ob = User.objects.all()
        ser = android_serialiser(ob, many=True)
        return Response(ser.data)

    def post(self, request):
        ob = User()
        ob.username = request.data['username']
        ob.password = request.data['password']
        ob.address = request.data['address']
        ob.phone_no = request.data['phone_no']
        ob.email = request.data['email']
        ob.gender = request.data['gender']
        ob.save()

        obj=Login()
        obj.username=request.data['email']
        obj.password=request.data['password']
        obj.type="user"
        obj.user_id=ob.user_id
        obj.save()
        return HttpResponse("yessss")