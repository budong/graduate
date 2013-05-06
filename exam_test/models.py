# -*- coding: utf-8 -*-
import datetime
import random
from django.db import models
from django.contrib.auth.models import User

import sys
reload( sys )
sys.setdefaultencoding('utf-8')

# Create your models here.
class QuestionAnswer(models.Model):
    title = models.CharField(max_length=1024,help_text="Maximum 1024 characters.",verbose_name="标题")
    slug = models.SlugField(unique=True,help_text="唯一")
    is_right = models.CharField(max_length=255,verbose_name="正确答案")
    A = models.CharField(max_length=102)
    B = models.CharField(max_length=1024)
    C = models.CharField(max_length=1024)
    D = models.CharField(max_length=1024)
    
    def __unicode__(self):
        return self.title
  
    @models.permalink
    def get_absolute_url(self):
        return ('exam_detail',(),{'slug': self.slug})

class UserExam(models.Model):
    user = models.ForeignKey(User)
    #title = models.ForeignKey(QuestionAnswer)
    pub_date = models.DateTimeField(default=datetime.datetime.now)
    rate = models.CharField(max_length=255)


    @models.permalink
    def get_absolute_url(self):
        return ('user_rate_detail',[str(self.id)])

 
def get_one_question():
    questions = QuestionAnswer.objects.all()
    question = random.choice(questions)
    dic = {}
    dic['title'] = question.title
    dic['answer_a'] = question.A
    dic['answer_b'] = question.B
    dic['answer_c'] = question.C
    dic['answer_d'] = question.D
    dic['answer_is_right'] = question.is_right
    return dic


 
        
    
