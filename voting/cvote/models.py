from django.db import models

# Create your models here.
class CasteVote(models.Model):
    cv_id = models.AutoField(primary_key=True)
    # vote = models.CharField(max_length=100)
    u_id = models.IntegerField()
    candid_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'caste_vote'


class Bchain(models.Model):
    ind = models.AutoField(primary_key=True)
    chdata = models.CharField(max_length=200)
    hashv = models.CharField(max_length=200)
    phashv = models.CharField(max_length=200)
    tstamp = models.CharField(max_length=15)

    class Meta:
        # managed = False
        db_table = 'bchain'