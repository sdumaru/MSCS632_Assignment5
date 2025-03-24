#ifndef RIDE_H
#define RIDE_H

#include <iostream>

class Ride
{
protected:
    int rideID;
    std::string pickupLocation;
    std::string dropoffLocation;
    double distance;
    double farePerMilage;

public:
    Ride(int id, std::string pickup, std::string dropoff, double dis, double fare);
    virtual ~Ride() = default;

    virtual double fare() const;
    virtual void rideDetails() const;
};

#endif
