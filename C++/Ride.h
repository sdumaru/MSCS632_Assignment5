#ifndef RIDE_H
#define RIDE_H

#include <iostream>

using namespace std;

class Ride
{
protected:
    int rideID;
    string pickupLocation;
    string dropoffLocation;
    double distance;
    double farePerMilage;

public:
    Ride(int id, string pickup, string dropoff, double dis, double fare);
    virtual ~Ride() = default;

    virtual double fare() const;
    virtual void rideDetails() const;
};

#endif
