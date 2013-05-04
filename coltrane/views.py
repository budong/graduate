# -*- coding: utf-8 -*-
from django.shortcuts import get_object_or_404, render_to_response
from coltrane.models import Category
from django.views.generic.list_detail import object_list
from django.contrib.auth.models import User
from graduate.accounts.models import MyProfile,create_myprofile
from django.views.generic.list_detail import object_list
from django.contrib.auth.decorators import login_required


import sys
reload( sys )
sys.setdefaultencoding('utf-8')

def category_detail(request, slug):
    category = get_object_or_404(Category, slug=slug)
    return object_list(request, queryset=category.live_entry_set(), extra_context={
        'category': category
    })


@login_required
def recommend_article(request):
    #找出用户浏览次数最多的一个标签
    django_user_object = get_object_or_404(User, username=request.user)
    try:
        user_profile_object = MyProfile.objects.get(user_id=django_user_object.id)
    except MyProfile.DoesNotExist:
        create_myprofile(user=django_user_object)
        user_profile_object = MyProfile.objects.get(user_id=django_user_object.id)

    max_num = max(user_profile_object.network,user_profile_object.system,user_profile_object.database,user_profile_object.other)
    if user_profile_object.network == max_num:
        category = 'network'
    elif user_profile_object.system == max_num:
        category = 'system'
    elif user_profile_object.database == max_num:
        category = 'database'
    elif user_profile_object.other == max_num:
        category = 'other'
    #找到相应标签对应的所有文章对象
    category_object = Category.objects.get(title=category)
    queryset = category_object.live_entry_set()
    #解析
    return object_list(request,queryset)
    
