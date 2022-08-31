from django.db import models

# Create your models here.
class Withdrawstatus(models.Model):
    ws_id = models.AutoField(primary_key=True)
    withrawstatus = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'withdrawstatus'
