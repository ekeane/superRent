from django.shortcuts import render
from django.http import HttpResponse

# DB Connection:
from sqlalchemy import create_engine
engine = create_engine('postgres://uwmavmxp:l5iO-IvPJlrfAB3AxVtgcpmd01NrkgBH@salt.db.elephantsql.com:5432/uwmavmxp')
connection = engine.connect()

# Landing page view:
def landing(request):
    
    return render(request, "landing.html")

def makeReservation(request):
    carType = request.GET.get('carType')
    location = request.GET.get('location')
    timeInterval = request.GET.get('timeInterval')

    if carType == None:
        carType = '*'

    if location == None:
        location = '*'

    if timeInterval == None:
        timeInterval = '*'
        
    query = connection.execute('select * FROM Vehicles WHERE cartype = %s AND carlocation = %s AND carinterval = %s', (carType, location, timeInterval))
    
    output = []
    for row in query:
        output.append(row)

    query.close()

    context = {
        'query': output,
        'carType': carType,
        'location': location,
        'timeInterval': timeInterval,
    }
 
    return render(request, "makeReservation.html", context)

def rentVehicle(request):
    return render(request, "rentVehicle.html")

def returnVehicle(request):
    return render(request, "returnVehicle.html")

def viewVehicle(request):
    return render(request, "viewVehicle.html")