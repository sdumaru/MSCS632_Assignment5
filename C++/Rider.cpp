#include "Rider.h"

Rider::Rider(int id, string riderName)
    : riderID(id)
    , name(riderName)
{
}

void Rider::requestRide(Ride *ride)
{
    requestedRides.push_back(ride);
}

void Rider::viewRides() const
{
    cout << "Rider ID: " << riderID
         << ", Name: " << name
         << ", Total Requested rides: " << requestedRides.size() << endl;
}
