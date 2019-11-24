from django.shortcuts import render
from django.http import HttpResponse

# Landing page view:
def landing(request):
    return render(request, "landing.html")

def makeReservation(request):
    return render(request, "makeReservation.html")

def rentVehicle(request):
    return render(request, "rentVehicle.html")

def returnVehicle(request):
    return render(request, "returnVehicle.html")

def viewVehicle(request):
    return render(request, "viewVehicle.html")