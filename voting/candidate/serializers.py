from rest_framework import serializers
from candidate.models import Candidate

class android_serialiser(serializers.ModelSerializer):
    class Meta:
        model=Candidate
        fields='__all__'