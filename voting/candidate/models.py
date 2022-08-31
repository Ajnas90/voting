from django.db import models

# Create your models here.
class Candidate(models.Model):
    candid_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    party = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    status = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'candidate'
