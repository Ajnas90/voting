from django.db import models

# Create your models here.
class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    phone_no = models.CharField(max_length=11)
    email = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    address = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'user'

class Aadhar(models.Model):
    ad_id = models.AutoField(primary_key=True)
    aadharnumber = models.CharField(max_length=100)
    age = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'aadhar'


