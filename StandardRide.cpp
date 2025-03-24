#include "StandardRide.h"

StandardRide::StandardRide(int id, string pickup, string dropoff, double dist, double fare)
    : Ride(id, pickup, dropoff, dist, fare)
{
}

double StandardRide::fare() const
{
    return distance * farePerMilage * 2;
}

void StandardRide::rideDetails() const
{
    cout << "Ride ID: " << rideID
         << ", From: " << pickupLocation
         << " to " << dropoffLocation
         << ", Distance: " << distance << " miles"
         << ", Cost: " << 2 * farePerMilage << " per mile." << endl;
}
