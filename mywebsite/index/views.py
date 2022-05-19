from django.shortcuts import render
from django.http import HttpResponse

from django.apps import apps

# Create your views here.
def index(request):
    listApp = []
    for app in apps.get_app_configs():
        listApp.append(app.label)
    context = { 'apps': listApp }
    return render(request, 'index/index.html', context)