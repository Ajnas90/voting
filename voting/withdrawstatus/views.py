from django.shortcuts import render
from withdrawstatus.models import Withdrawstatus
# Create your views here.
def wstatus(request):
    if request.method=="POST":
        ob=Withdrawstatus()
        ob.ws_id='1'
        ob.withrawstatus=request.POST.get('status')
        ob.save()
    return render(request, 'withdrawstatus/withdraw status.html')



