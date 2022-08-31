from django.shortcuts import render
from withdraw.models import Withdraw
from candidate.models import Candidate
from withdrawstatus.models import Withdrawstatus
# Create your views here.
def withdraw(request):
    ob= Withdraw.objects.all()
    context={
        'obval':ob
    }
    return render(request,'withdraw/withdraw.html',context)
def delete(request,idd):
    ob=Withdraw.objects.get(w_id=idd).delete()
    return withdraw(request)

def aprove(request,):
    ss=request.session["uid"]
    wstatus = Withdrawstatus.objects.all()
    if len(wstatus) > 0:
        st = wstatus[0].withrawstatus

    if st == "STOP":
        context = {
            "stat": "YOU CANNOT WITHDRAW NOW"
        }
        return render(request, 'withdraw/with.html', context)
    if request.method == "POST":
        st = "not"

        ob = Candidate.objects.get(candid_id=ss)
        ob.status="withdraw"
        ob.save()
        obj=Withdraw()
        obj.party=ob.party
        obj.candid_name=ob.name
        obj.save()
    return render(request,'withdraw/candwithdraw.html')
