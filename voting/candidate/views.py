from django.shortcuts import render
from candidate.models import Candidate
from login.models import Login
from user.models import User
# Create your views here.
def viewcandid(request):
    ob=Candidate.objects.filter(status="pending")
    context={
        'obj':ob
    }
    return render(request,'candidate/manage_candid.html',context)

def aprove(request,idd):
    obj=Candidate.objects.get(candid_id=idd)
    obj.status='approve'
    obj.save()
    return  viewcandid(request)
def reject(request,idd):
    obj=Candidate.objects.get(candid_id=idd)
    obj.status='reject'
    obj.save()
    return viewcandid(request)

def candidregister(request):
    ss=request.session['uid']
    if request.method=="POST":
        ob=User.objects.get(user_id=ss)
        obb=Candidate()
        obb.name=request.POST.get('cname')
        obb.password=request.POST.get('Password')
        obb.address=ob.address
        obb.gender=ob.gender
        obb.party=request.POST.get('party')
        obb.status="pending"
        obb.save()
        obj=Login()
        obj.username=obb.name
        obj.password=obb.password
        obj.u_id=obb.candid_id
        obj.type='candidate'
        obj.save()
    return render(request,'candidate/caandidate_register.html')

def candidview(request):
    ob=Candidate.objects.filter(status="approve")
    context={
        'obj':ob
    }
    return render(request,'candidate/view_user_candid.html',context)