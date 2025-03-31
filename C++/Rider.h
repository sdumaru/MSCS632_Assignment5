#ifndef RIDER_H
#define RIDER_H

#include "Ride.h"
#include <vector>

class Rider
{
private:
    int riderID;
    string name;
    vector<Ride *> requestedRides;

public:
    Rider(int id, string riderName);
    void requestRide(Ride *ride);
    void viewRides() const;
};

#endif
