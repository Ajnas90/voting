from django.shortcuts import render
from poll.models import Poling
# Create your views here.
def view_poll(request):
    ob=Poling.objects.all()
    context={
        'obj':ob
    }
    return render(request,'poll/view_poll.html',context)