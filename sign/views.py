# -*- coding: utf-8 -*-
from django.shortcuts import get_object_or_404, render_to_response
from sign.models import SignEveryDay,create_mood,check_sign 
from django.contrib.auth.decorators import login_required
from django.views.generic import list_detail

import sys
reload( sys )
sys.setdefaultencoding('utf-8')


@login_required
def sign_everyday(request):
    username = request.user
    error = False
    if check_sign(username):
        return render_to_response('sign/already_sign.html',)
    elif 'mood' in request.GET: 
        mood = request.GET['mood']
        if not mood:
            error = True
        else:
            create_mood(username,mood)
            return render_to_response('sign/already_sign.html',)
    return render_to_response('sign/sign.html',{'error': error})

@login_required
def sign_list(request):
    username = request.user
    return list_detail.object_list(request,queryset=SignEveryDay.objects.filter(user=username),)

@login_required
def sign_detail(request,slug):
    username = request.user
    return list_detail.object_detail(request,queryset=SignEveryDay.objects.filter(user=username),object_id=slug)
