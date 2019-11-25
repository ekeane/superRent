"""SuperRent URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from SuperRentApp.views import landing, makeReservation, rentVehicle, returnVehicle, viewVehicle, viewBranch, viewCustomers, allTables, dailyReturns, dailyReturnsBranch
from django.conf.urls import url

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^$', landing, name="landing"),
    url('makeReservation', makeReservation, name="makeReservation"),
    url('rentVehicle', rentVehicle, name="rentVehicle"),
    url('returnVehicle/', returnVehicle, name="returnVehicle"),
    url('viewVehicle/', viewVehicle, name="viewVehicle"), 
    url('viewBranch/', viewBranch, name="viewBranch"),
    url('viewCustomers/', viewCustomers, name="viewCustomers"),
    url('allTables/', allTables, name="allTables"),
    url('dailyReturns/', dailyReturns, name="dailyReturns"),
    url('dailyReturnsBranch/', dailyReturnsBranch, name="dailyReturnsBranch"),
]
