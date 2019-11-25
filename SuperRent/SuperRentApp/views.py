from django.shortcuts import render
from django.http import HttpResponse
import pandas as pd
import random

# DB Connection:
from sqlalchemy import create_engine
engine = create_engine('postgres://uwmavmxp:EvV_jHfeHg5W2wQOxX0QBTQxIrBI6I1T@salt.db.elephantsql.com:5432/uwmavmxp')
connection = engine.connect()

# Landing page view:
def landing(request):
    
    return render(request, "landing.html")

def makeReservation(request):

    ################################   Add customer   ###################################### 
    cellPhone = request.POST.get('cellphone')
    name = request.POST.get('name')
    address = request.POST.get('address')
    outputCustomer = [('No one')]

    if cellPhone != None:
        query = connection.execute('INSERT INTO Customers1 (cellphone, Cname, Caddress) VALUES (%s, %s, %s)', (cellPhone, name, address))
        worked = connection.execute('SELECT Cname FROM Customers1 WHERE cellphone = %s', (cellPhone))
        query.close()
        # worked.close()
        for row in worked:
            outputCustomer[0] = row

    ################################   Add reservation   ###################################### 
    outputReservation = []

    confNo = "No reservation added"

    carType = request.POST.get('carType')
    cellphone = request.POST.get('cellphone')
    fromdate = request.POST.get('fromdate')
    fromtime = request.POST.get('fromtime')
    todate = request.POST.get('todate')
    totime = request.POST.get('totime')

    errorMsg = ""
    try:
        if carType != None:
            confNo = random.randint(134, 100000)
            query = connection.execute('INSERT INTO Reservations1 (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime) VALUES (%s, %s, %s, %s, %s, %s, %s)', (confNo, carType, cellphone, fromdate, fromtime, todate, totime))
            query.close()
    except:
        errorMsg = "Sorry this vehicle type is taken or does not exist!"
        confNo = 'Error! Unable to add.'
        carType = "N/A"
        cellphone = "N/A"
        fromdate = "N/A"
        fromtime = "N/A"
        todate = "N/A"
        totime = "N/A"
    

    context = { 
        'newReservation': confNo,

        'carType': carType,
        'cellphone': cellphone,
        'fromdate': fromdate,
        'fromtime': fromtime,
        'todate': todate,
        'totime': totime,

        'errorMsg': errorMsg,

        'newCustomer': outputCustomer[0],
    }
    return render(request, "makeReservation.html", context)

def rentVehicle(request):
    confNo = request.POST.get('confNo')
    vid = request.POST.get('vid')
    cellphone = request.POST.get('cellphone')
    fromdate = request.POST.get('fromdate')
    fromtime = request.POST.get('fromtime')
    todate = request.POST.get('todate')
    totime = request.POST.get('totime')
    odometer = request.POST.get('odometer')
    cardName = request.POST.get('cardName')
    cardNo = request.POST.get('cardNo')
    ExpDate = request.POST.get('ExpDate')

    errorMsg = ""
    confNoRandomGenerated = ""
    # try:
    if type(confNo) is None or confNo is None or len(confNo) > 2:
        print('foo', confNo, type(confNo))
        confNoOutput = []
        output = connection.execute('select * FROM Reservations1 WHERE confNo = %s', (confNo))
        
        for row in output:
                confNoOutput.append(row)

        print("this is the confNO inside the if", confNoOutput)
        if (len(confNoOutput) > 0):
            rid = random.randint(134, 1000000)
            query = connection.execute('INSERT INTO Rentals1 (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)', (rid, vid, cellphone, fromdate, fromtime, todate, totime, odometer, cardName, cardNo, ExpDate, confNo))
            query.close()
    else:
        print("in else")
        rid = random.randint(134, 1000000)
        # confNoRandomGenerated = "Confirmation Number was randomly generated as you did not make a prior reservation."
        confNoRandomGenerated = "Confirmation Number was not generated as you did not make a prior reservation"
        query = connection.execute('INSERT INTO Customers1 (cellphone) VALUES (%s)', (cellphone))
        query.close()
        query = connection.execute('INSERT INTO Rentals1 (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)', (rid, vid, cellphone, fromdate, fromtime, todate, totime, odometer, cardName, cardNo, ExpDate))
        query.close()
    # except:
    #     confNo = 'Error! Unable to add.'
    #     carType = "N/A"
    #     cellphone = "N/A"
    #     fromdate = "N/A"
    #     fromtime = "N/A"
    #     todate = "N/A"
    #     totime = "N/A"
    
    context = { 
        "confNo": confNo,
        'cellphone': cellphone,
        'fromdate': fromdate,
        'fromtime': fromtime,
        'todate': todate,
        'totime': totime,
        'odometer': odometer,
        'cardName': cardName,
        'cardNo': cardNo,
        'ExpDate': ExpDate,
        'confNoRandomGenerated': confNoRandomGenerated,
    }

    return render(request, "rentVehicle.html", context)

def returnVehicle(request):
    return render(request, "returnVehicle.html")

def viewVehicle(request):
    carType = request.GET.get('carType')
    location = request.GET.get('location')
    startDate = request.GET.get('startDate')
    endDate = request.GET.get('endDate')
    timeInterval = ''
   ##################################################################
        
    # All Null
    if (carType != '' and location != '' and startDate != '' and endDate != ''):    
        query = connection.execute('select * FROM Vehicle1 WHERE vtname = %s and loc = %s', (carType, location))
    # carType empty or Location Empty or TimeInterval Empty or 2 empty or other 2 empty or other 2 empty or all 3 empty

    # First 2 Empty
    if (carType == '' and location == '' and startDate != '' and endDate != '' ):
        # Works
        # query = connection.execute('select * FROM Vehicle1 WHERE vid NOT IN (SELECT vid FROM Rentals1 WHERE vid = %s)', ('1122'))
        query = connection.execute('select * FROM Vehicle1 WHERE vid NOT IN (SELECT vid FROM Rentals1 WHERE fromDate NOT BETWEEN %s AND %s OR toDate NOT BETWEEN %s AND %s)', (startDate, endDate, startDate, endDate))

        #query = connection.execute('select * FROM Vehicle1 WHERE vid NOT IN (SELECT vid FROM Rentals1 WHERE fromDate < %s AND toDate > %s)', (startDate, endDate))

    # Last 2 Empty
    if (carType != '' and location != '' and startDate == '' and endDate == ''):
        query = connection.execute('select * FROM Vehicle1 WHERE vtname = %s and loc = %s', (carType, location))

    # First Empty
    if (carType == '' and location != '' and startDate != '' and endDate != ''):
        query = connection.execute('select * FROM Vehicle1 WHERE loc = %s AND vid NOT IN (SELECT vid FROM Rentals1 WHERE fromDate NOT BETWEEN %s AND %s OR toDate NOT BETWEEN %s AND %s)', (location, startDate, endDate, startDate, endDate))

    #Only Location
    if (carType == '' and location != '' and startDate == '' and endDate == ''):
        query = connection.execute('select * FROM Vehicle1 WHERE loc = %s', (location))

    #Only Car Type
    if (carType != '' and location == '' and startDate == '' and endDate == ''):
        query = connection.execute('select * FROM Vehicle1 WHERE vtname = %s', (carType))

    #Only StartDate End Date (Second Empty)
    if (carType != '' and location == '' and startDate != '' and endDate != ''):
        query = connection.execute('select * FROM Vehicle1 WHERE vtname = %s AND vid NOT IN (SELECT vid FROM Rentals1 WHERE fromDate NOT BETWEEN %s AND %s OR toDate NOT BETWEEN %s AND %s)', (carType, startDate, endDate, startDate, endDate))


    # All Empty
    if (carType == '' and location == '' and startDate == '' and endDate == '' ):
        query = connection.execute('select * FROM Vehicle1')

    # if (carType == '' and location != '' and timeInterval != ''):
    #     query = connection.execute('select * FROM Vehicle1 WHERE carlocation = %s AND carinterval = %s', (location, timeInterval))

    
    # if (carType != '' and location == '' and timeInterval != ''):
    #     query = connection.execute('select * FROM Vehicle1 WHERE cartype = %s AND carinterval = %s', (carType, timeInterval))


    # if (carType != '' and location != '' and timeInterval == ''):
    #     query = connection.execute('select * FROM Vehicle1 WHERE cartype = %s AND carlocation = %s', (carType, location))

    # 2 empty cases

    # if (carType == '' and location == '' and timeInterval != ''):
    #     query = connection.execute('select * FROM Vehicle1 WHERE carinterval = %s', (timeInterval))

    
    # if (carType != '' and location == '' and timeInterval == ''):
    #     query = connection.execute('select * FROM Vehicle1 WHERE cartype = %s', (carType))


    if (carType == '' and location != '' and startDate == '' and endDate == ''):
        query = connection.execute('select * FROM Vehicle1 WHERE loc = %s', (location))

        #############################################################

    output = []
    for row in query:
        output.append(row)

    query.close()

    carId = []
    cartype = []
    loc = []
    interval = []
    new = []
    new2 = []
    new3 = []
    new4 = []
    new5 = []
    new6 = []
    new7 = []
    for v in output:
        carId.append(v[0])
        cartype.append(v[1])
        loc.append(v[2])
        interval.append(v[3])
        new.append(v[4])
        new2.append(v[5])
        new3.append(v[6])
        new4.append(v[7])
        new5.append(v[8])
        new6.append(v[9])
        new7.append(v[10])
    tableData = {'Vehicle License': carId, 'VehicleId': cartype, 'Make': loc, 'Year': interval, 'Model': new, 'Color': new2, 'Odometer': new3, 'Status': new4, 'Vehicle Type': new5, 'Location': new6, 'City': new7}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()
    
    lenlen = len(new2)
    context = {
        'query': df,
        'length': lenlen,
        'carType': carType,
        'location': location,
        'timeInterval': timeInterval,
    }
    return render(request, "viewVehicle.html", context)


def viewBranch(request):
    query = connection.execute('select * FROM Branch1')

    output = []
    for row in query:
        output.append(row)

    query.close()

    loc = []
    city = []
    for info in output:
        loc.append(info[0])
        city.append(info[1])

    tableData = {'Location': loc, 'City': city}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'viewBranchAll': df 
    }

    return render(request, "viewBranch.html", context) 

def viewCustomers(request):
    query = connection.execute('select * FROM Customers1')

    output = []
    for row in query:
        output.append(row)

    query.close()

    cellphone = []
    cname = []
    caddress = []
    for info in output:
        cellphone.append(info[0])
        cname.append(info[1])
        caddress.append(info[2])

    tableData = {'Cell Phone': cellphone, 'Customer Name': cname, 'Customer Address': caddress}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'viewCustomersAll': df 
    }

    return render(request, "viewCustomers.html", context)

def allTables(request):
    pg = 'pg_catalog'
    info = 'information_schema'
    query = connection.execute('select * FROM pg_catalog.pg_tables WHERE schemaname != %s AND schemaname != %s ', (pg, info))

    output = []
    for row in query:
        output.append(row)
    query.close()

    first = []
    second = []
    for info in output:
        if ("1" in str(info[1])):
            first.append(info[0])
            second.append(info[1])

    tableData = {'Schema name': first, 'Table Name': second}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'allTables': df
    }

    return render(request, "allTables.html", context) 

def dailyRentalsBranch(request):
    date = request.GET.get('date')
    branch = request.GET.get('branch')
    query = connection.execute('SELECT vt.vtname, count(*) from Rentals1 r, Vehicle1 v, Branch1 b, VehicleType1 vt WHERE r.vid=v.vid AND v.loc=b.loc AND r.fromDate = %s and b.city = %s and v.vtname = vt.vtname group by vt.vtname', (date, branch))

    output = []
    for row in query:
        output.append(row)
    query.close()

    first = []
    second = []
    for info in output:
        first.append(info[0])
        second.append(info[1])

    tableData = {'Vehicle Type': first, 'Count': second}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'dailyRentalsBranch': df
    }
    return render(request, "dailyRentalsBranch.html", context)

def dailyRentals(request):
    date = request.GET.get('date')
    query = connection.execute('select b.city, count(v.vtname), v.vtname from Branch1 b, Vehicle1 v where v.vtname in (SELECT vt.vtname from Rentals1 r, VehicleType1 vt WHERE r.vid=v.vid AND v.loc=b.loc AND r.fromDate = %s and v.vtname = vt.vtname group by vt.vtname) group by b.city, v.vtname', (date))

    output = []
    for row in query:
        output.append(row)
    query.close()

    first = []
    second = []
    third = []
    for info in output:
        first.append(info[0])
        second.append(info[1])
        third.append(info[2])

    tableData = {'City': first, 'Count': second, 'Vehicle Type': third}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'dailyRentals': df
    }

    return render(request, "dailyRentals.html", context)


def dailyReturns(request):
    date = request.GET.get('date')
    query = connection.execute('select b.city, count(v.vtname), v.vtname from Branch1 b, Vehicle1 v where v.vtname in (SELECT vt.vtname from Rentals1 r, VehicleType1 vt, Returns1 re WHERE r.vid=v.vid AND v.loc=b.loc AND re.returnDate = %s and v.vtname = vt.vtname and re.rid = r.rid group by vt.vtname) group by b.city, v.vtname', (date))

    output = []
    for row in query:
        output.append(row)
    query.close()

    first = []
    second = []
    third = []
    for info in output:
        first.append(info[0])
        second.append(info[1])
        third.append(info[2])

    tableData = {'City': first, 'Count': second, 'Vehicle Type': third}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'dailyReturns': df
    }

    return render(request, "dailyReturns.html", context)


def dailyReturnsBranch(request):
    date = request.GET.get('date')
    branch = request.GET.get('branch')
    query = connection.execute('SELECT vt.vtname, count(*) from Rentals1 r, Vehicle1 v, Branch1 b, VehicleType1 vt, Returns1 re WHERE r.vid=v.vid AND v.loc=b.loc AND re.returnDate = %s and b.city = %s and v.vtname = vt.vtname and re.rid = r.rid group by vt.vtname', (date, branch))

    output = []
    for row in query:
        output.append(row)
    query.close()

    first = []
    second = []
    for info in output:
        first.append(info[0])
        second.append(info[1])

    tableData = {'Vehicle Type': first, 'Count': second}
    df = pd.DataFrame(data=tableData)
    df = df.to_html()

    context = {
        'dailyReturnsBranch': df
    }
    return render(request, "dailyReturnsBranch.html", context)