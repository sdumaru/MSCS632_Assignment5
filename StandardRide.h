#ifndef STANDARD_RIDE_H
#define STANDARD_RIDE_H

#include "Ride.h"

class StandardRide : public Ride
{
public:
    StandardRide(int id, string pickup, string dropoff, double dist, double fare);
    double fare() const override;
    void rideDetails() const override;
};

#endif
