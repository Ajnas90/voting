from django.db import models

# Create your models here.
class Votingstatus(models.Model):
    vs_id = models.AutoField(primary_key=True)
    status = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'votingstatus'
