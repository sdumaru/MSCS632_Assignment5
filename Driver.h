#ifndef DRIVER_H
#define DRIVER_H

#include "Ride.h"
#include <vector>

class Driver
{
private:
    int driverID;
    string name;
    double rating;
    vector<Ride *> assignedRides;

public:
    Driver(int id, string driverName, double driverRating);
    void addRide(Ride *ride);
    void getDriverInfo() const;
};

#endif
