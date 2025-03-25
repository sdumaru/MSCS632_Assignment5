#include "Driver.h"

Driver::Driver(int id, string driverName, double driverRating)
    : driverID(id)
    , name(driverName)
    , rating(driverRating)
{
}

void Driver::addRide(Ride *ride)
{
    assignedRides.push_back(ride);
}

void Driver::getDriverInfo() const
{
    cout << "Driver ID: " << driverID
         << ", Name: " << name
         << ", Rating: " << rating << endl;
}
