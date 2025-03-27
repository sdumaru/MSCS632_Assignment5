#include "Ride.h"

Ride::Ride(int id, string pickup, string dropoff, double dist, double fare)
    : rideID(id)
    , pickupLocation(pickup)
    , dropoffLocation(dropoff)
    , distance(dist)
    , farePerMilage(fare)
{
}

double Ride::fare() const
{
    return farePerMilage * distance;
}

void Ride::rideDetails() const
{
    cout << "Ride ID: " << rideID
         << ", From: " << pickupLocation
         << " to " << dropoffLocation
         << ", Distance: " << distance << " miles"
         << ", Fare per mile: $" << farePerMilage << endl;
}
