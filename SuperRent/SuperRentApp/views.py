from django.shortcuts import render
from django.http import HttpResponse

# DB Connection:
from sqlalchemy import create_engine
engine = create_engine('postgres://uwmavmxp:l5iO-IvPJlrfAB3AxVtgcpmd01NrkgBH@salt.db.elephantsql.com:5432/uwmavmxp')
connection = engine.connect()

# Landing page view:
def landing(request):
    query = connection.execute("select * FROM reservations")
    output = []
    for row in query:
        output.append(row)


    context = {
        'query': output,
    }

    return render(request, "landing.html", context)

def makeReservation(request):
    return render(request, "makeReservation.html")

def rentVehicle(request):
    return render(request, "rentVehicle.html")

def returnVehicle(request):
    return render(request, "returnVehicle.html")

def viewVehicle(request):
    return render(request, "viewVehicle.html")