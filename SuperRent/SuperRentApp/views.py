from django.shortcuts import render
from django.http import HttpResponse
import pandas as pd

# DB Connection:
from sqlalchemy import create_engine
engine = create_engine('postgres://uwmavmxp:EvV_jHfeHg5W2wQOxX0QBTQxIrBI6I1T@salt.db.elephantsql.com:5432/uwmavmxp')
connection = engine.connect()

# Landing page view:
def landing(request):
    
    return render(request, "landing.html")

def makeReservation(request):
    cellPhone = request.POST.get('cellphone')
    name = request.POST.get('name')
    address = request.POST.get('address')
    output = [('No one')]

    if cellPhone != None:
        query = connection.execute('INSERT INTO Customers1 (cellphone, Cname, Caddress) VALUES (%s, %s, %s)', (cellPhone, name, address))
        worked = connection.execute('SELECT Cname FROM Customers1 WHERE cellphone = %s', (cellPhone))
        query.close()
        for row in worked:
            output[0] = row

    context = { # to fix
        'newCustomer': output[0],
    }
    return render(request, "makeReservation.html", context)

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

    carId = []
    cartype = []
    loc = []
    interval = []
    for v in output:
        carId.append(v[0])
        cartype.append(v[1])
        loc.append(v[2])
        interval.append(v[3])
    
    tableData = {'ID': carId, 'Car Type': cartype, 'Location': loc, 'Interval': interval}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'query': df,
        'carType': carType,
        'location': location,
        'timeInterval': timeInterval,
    }
    return render(request, "viewVehicle.html", context)