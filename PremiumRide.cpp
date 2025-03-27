#include "PremiumRide.h"

PremiumRide::PremiumRide(int id, string pickup, string dropoff, double dist, double fare)
    : Ride(id, pickup, dropoff, dist, fare) 
{
}

double PremiumRide::fare() const
{
    return distance * farePerMilage * 5;
}

void PremiumRide::rideDetails() const
{
    cout << "Premium Ride ID: " << rideID
         << ", From: " << pickupLocation
         << " to " << dropoffLocation
         << ", Distance: " << distance << " miles"
         << ", Fare per mile: $" << 5 * farePerMilage << endl;
}
