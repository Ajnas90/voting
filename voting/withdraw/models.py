from django.db import models

# Create your models here.
class Withdraw(models.Model):
    w_id = models.AutoField(primary_key=True)
    candid_name = models.CharField(max_length=100)
    party = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'withdraw'
