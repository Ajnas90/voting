from django.db import models

# Create your models here.
class Notification(models.Model):
    notifi_id = models.AutoField(primary_key=True)
    notification = models.CharField(max_length=100)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'notification'

