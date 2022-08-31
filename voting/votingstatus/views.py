from django.shortcuts import render
from votingstatus.models import Votingstatus
# Create your views here.
def status(request):
    if request.method=="POST":
        ob=Votingstatus()
        ob.vs_id=1
        ob.status=request.POST.get('status')
        ob.save()
    return render(request, 'votingstatus/voting status.html')
# Create your views here.
