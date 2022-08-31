from django.db import models

# Create your models here.
class Result(models.Model):
    r_id = models.IntegerField(primary_key=True)
    result = models.CharField(max_length=100)
    candid_id = models.CharField(max_length=11)
    remark = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'result'
