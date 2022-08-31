from django.http import HttpResponseRedirect
from django.shortcuts import render
from cvote.models import CasteVote
from candidate.models import Candidate
from user.models import User
from votingstatus.models import Votingstatus


# Create your views here.
def cvote(request):
    olist=CasteVote.objects.filter(u_id=request.session["uid"])

    vstatus=Votingstatus.objects.all()

    st="not"
    if len(vstatus)>0:
        st=vstatus[0].status

    if st=="STOP":
        context={
            "stat":"YOU CANNOT CAST VOTE NOW"
        }
        return render(request, 'cvote/voted.html',context)


    if len(olist)>0:
        context = {
            "stat": "YOU HAVE ALREADY VOTED"
        }
        return render(request,'cvote/voted.html',context)
    else:
        ob=Candidate.objects.all()
        context={
            'ok':ob
        }
        # if request.method=="POST":
        #     obb=CasteVote()

        return render(request,'cvote/cvote.html',context)


def otp(request):

    if request.method=="POST":
        otp=request.session['otp']
        cid=request.session['cid']

        uotp=request.POST.get('otp')

        if otp==uotp:
            obb=CasteVote()
            obb.u_id=request.session["uid"]
            obb.candid_id=cid
            obb.save()
            genblock(str(obb.candid_id) +" "+str(obb.u_id))


            return HttpResponseRedirect('/temp/user/')
    return render(request, 'cvote/otp.html')

def vote(request,idd):
    olist = CasteVote.objects.filter(u_id=request.session["uid"])
    if len(olist) > 0:
        return render(request,'cvote/voted.html')
    else:
        import random

        rnd=random.randint(1001, 9999)

        # ob=User()
        ob=User.objects.filter(user_id=request.session["uid"])
        if len(ob)>0:

            ph=ob[0].phone_no

            request.session['otp'] = str(rnd)
            request.session['cid'] = str(idd)

            import requests

            url = "https://www.fast2sms.com/dev/bulkV2"
            # url = "https://www.fast2sms.com/dev/bulkV2"

            payload = "message="+ str(rnd) +"&language=english&route=q&numbers="+str(ph)
            headers = {
                'authorization': "FUO5AQPr67pCLyBhsgNmlH4aEcdIMbvnRKi19ft0VZ82qWXD3SMekywUHnRvJTc1jGusA8iO3a6DBSmC",
                'Content-Type': "application/x-www-form-urlencoded",
                'Cache-Control': "no-cache",
            }

            response = requests.request("POST", url, data=payload, headers=headers)


            print(response.text)
            print("otp :" + str(rnd))
            return HttpResponseRedirect('/cvote/otp/')






    # return cvote(request)

from django.db.models import Count
from result.models import Result
def count(request):
    result = CasteVote.objects.values('candid_id').order_by('candid_id').annotate(count=Count('candid_id'))
    obj=Result()
    vt=0
    rid=0
    for o in result:
        obj.result=o['count']
        obj.candid_id=o['candid_id']
        obb=Result.objects.filter(candid_id=o['candid_id'])
        obb.delete()
        obj.save()


        if int(o['count']) > vt:
            rid=obj.r_id
            vt=int(o['count'])
        print(o['candid_id'])
        print(o['count'])
    context={
        'ok':result
    }
    return render(request,'cvote/view_vote.html',context)
from django.db.models import Max
from cvote.models import Bchain
from django.http import HttpResponse
# Create your views here.
import hashlib
import pyaes
import base64
# from datetime\
import datetime


def genblock(data):
    # fsl = Bchain.objects.all()
    # try:

    dat=data


    hash=hashlib.md5(dat.encode())
    hash=hash.hexdigest()

    fsl = Bchain.objects.all().aggregate(Max('ind'))
    pvhash=0
    fid = list(fsl.values())[0]
    if not (fid is None):
        print(str(fid))
        obj = Bchain.objects.get(ind=fid)
        pvhash = obj.hashv
        # print("pvh")
        # print(str(pvhash))

    else:
        pvhash = 0
        fid = 0

    key = "12345"
    key = key.rjust(32, 'a')
    key = key.encode('utf-8')

    aes1 = pyaes.AESModeOfOperationCTR(key)
    ciphertext = aes1.encrypt(dat)
    basestr = base64.b64encode(ciphertext)
    print(basestr)
    ts="2022/06/25"
    print(str(ts))

    sobj=Bchain()
    sobj.hashv=hash
    sobj.phashv=pvhash
    sobj.chdata=basestr
    sobj.tstamp=ts
    sobj.save()