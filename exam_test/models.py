import datetime
import random
from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class QuestionAnswer(models.Model):
    title = models.CharField(max_length=255,unique=True,help_text="Maximum 255 characters.")
    slug = models.SlugField(unique=True,help_text="Suggested value automatically generated from title. Must be unique.")
    is_right = models.CharField(max_length=255)
    a = models.CharField(max_length=1024)
    b = models.CharField(max_length=1024)
    c = models.CharField(max_length=1024)
    d = models.CharField(max_length=1024)
    
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
    dic['answer_a'] = question.a
    dic['answer_b'] = question.b
    dic['answer_c'] = question.c
    dic['answer_d'] = question.d
    dic['answer_is_right'] = question.is_right
    return dic


 
        
    
