# -*- coding: utf-8 -*-
from __future__ import division
from django.shortcuts import get_object_or_404, render_to_response
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views.generic import list_detail
from exam_test.models import QuestionAnswer, UserExam, get_one_question
from django.template import RequestContext


@login_required
def exam_detail(request, slug):
    question = get_object_or_404(QuestionAnswer, slug=slug)
    return list_detail.object_detail(request, queryset=QuestionAnswer.objects.all(), object_id=question.id)


@login_required
def user_rate_list(request):
    django_user_object = get_object_or_404(User, username=request.user)
    return list_detail.object_list(request, queryset=UserExam.objects.filter(user=django_user_object),paginate_by=8)


@login_required
def user_rate_detail(request, id):
    # user_exam_object = get_object_or_404(UserExam,id=id)
    return list_detail.object_detail(request, queryset=UserExam.objects.all(), object_id=id)


@login_required
def checkout(request):
    '''
    qa: 存储所有回答过的问题
    right: 存储答对的题数
    num : 答题计数，超过5题，就重新开始
    '''
    error = False
    sucess = False
    question_dic = get_one_question()

    if 'right' not in request.session:
        request.session["right"] = 0
    if 'qa' not in request.session:
        request.session["qa"] = {}
    if 'num' not in request.session:
        request.session["num"] = 0
    elif request.session["num"] >= 5:
        #对第五个问题进行验证
        if 'answer' in request.GET:
            answer = request.GET['answer']
            request.session['qa'][request.session["num"]-1]['answer'] = answer
            if request.session['qa'][request.session["num"]-1]['answer_is_right'] == request.session['qa'][request.session["num"]-1]['answer']:
                request.session["right"] += 1

        #本次测试的问题字典，及结果
        sucess = True
        all_questions = request.session["qa"]
        score = request.session["right"]
        rate = (score / 5) * 100
        rate = str(rate).split('.')[0]

        #答完问题后，将结果存入数据库,目前只存分数、时间
        django_user_object = get_object_or_404(User, username=request.user)
        UserExam.objects.create(user=django_user_object, rate=rate)

        del request.session["right"]
        del request.session["qa"]
        del request.session["num"]
        return render_to_response('exam_test/checkout.html', {'sucess': sucess, 'rate': rate, 'all_questions': all_questions}, context_instance=RequestContext(request))

    #对提交的问题进行验证，将结果存入session
    if request.method == 'GET':
        request.session['qa'][request.session["num"]] = {}
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'question'] = question_dic[
                            'title']
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'answer_a'] = question_dic[
                            'answer_a']
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'answer_b'] = question_dic[
                            'answer_b']
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'answer_c'] = question_dic[
                            'answer_c']
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'answer_d'] = question_dic[
                            'answer_d']
        request.session[
            'qa'][
                request.session[
                    "num"]][
                        'answer_is_right'] = question_dic[
                            'answer_is_right']
        if 'answer' in request.GET:
            answer = request.GET['answer']
            request.session['qa'][request.session["num"]-1]['answer'] = answer
            if request.session['qa'][request.session["num"]-1]['answer_is_right'] == request.session['qa'][request.session["num"]-1]['answer']:
                request.session["right"] += 1
        request.session["num"] += 1

    # get请求时显示的问题
    question = question_dic['title']
    answer_a = question_dic['answer_a']
    answer_b = question_dic['answer_b']
    answer_c = question_dic['answer_c']
    answer_d = question_dic['answer_d']

    return render_to_response('exam_test/checkout.html', {'username': request.user, 'num_question': request.session["num"], 'question': question, 'answer_a': answer_a, 'answer_b': answer_b, 'answer_c': answer_c, 'answer_d': answer_d}, context_instance=RequestContext(request))
