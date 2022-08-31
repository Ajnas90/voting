from django.shortcuts import render
from result.models import Result
# Create your views here.

def result(request):
    return render(request,'result/result.html',)