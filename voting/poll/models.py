from django.db import models

# Create your models here.
class Poling(models.Model):
    p_id = models.AutoField(primary_key=True)
    date = models.DateField()
    from_time = models.TimeField()
    to_time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'poling'
