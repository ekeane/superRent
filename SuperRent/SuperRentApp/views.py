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
    
    return render(request, "makeReservation.html")

def rentVehicle(request):
    return render(request, "rentVehicle.html")

def returnVehicle(request):
    return render(request, "returnVehicle.html")

def viewVehicle(request):
    carType = request.GET.get('carType')
    location = request.GET.get('location')
    timeInterval = request.GET.get('timeInterval')

   ##################################################################
        
    # 0 empty  
    if (carType != '' and location != '' and timeInterval != ''):    
        query = connection.execute('select * FROM Vehicles WHERE cartype = %s AND carlocation = %s AND carinterval = %s', (carType, location, timeInterval))
    # carType empty or Location Empty or TimeInterval Empty or 2 empty or other 2 empty or other 2 empty or all 3 empty

    # 3 empty
    if (carType == '' and location == '' and timeInterval == ''):
        query = connection.execute('select * FROM Vehicles')
    # 1 empty cases

    if (carType == '' and location != '' and timeInterval != ''):
        query = connection.execute('select * FROM Vehicles WHERE carlocation = %s AND carinterval = %s', (location, timeInterval))

    
    if (carType != '' and location == '' and timeInterval != ''):
        query = connection.execute('select * FROM Vehicles WHERE cartype = %s AND carinterval = %s', (carType, timeInterval))


    if (carType != '' and location != '' and timeInterval == ''):
        query = connection.execute('select * FROM Vehicles WHERE cartype = %s AND carlocation = %s', (carType, location))

    # 2 empty cases

    if (carType == '' and location == '' and timeInterval != ''):
        query = connection.execute('select * FROM Vehicles WHERE carinterval = %s', (timeInterval))

    
    if (carType != '' and location == '' and timeInterval == ''):
        query = connection.execute('select * FROM Vehicles WHERE cartype = %s', (carType))


    if (carType == '' and location != '' and timeInterval == ''):
        query = connection.execute('select * FROM Vehicles WHERE carlocation = %s', (location))

        #############################################################

    output = []
    for row in query:
        output.append(row)

    query.close()

    print(type(output[0]))
    context = {
        'query': output,
        'carType': carType,
        'location': location,
        'timeInterval': timeInterval,
    }
    return render(request, "viewVehicle.html", context)