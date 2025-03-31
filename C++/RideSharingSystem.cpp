#include "StandardRide.h"
#include "PremiumRide.h"
#include "Driver.h"
#include "Rider.h"
#include <vector>

int main() {
    Rider rider(1, "Rajita");
    Driver driver(101, "Sujan", 4.8);

    // Create a list of rides with different types (Base Ride class with Derived Standard & Premium classes)
    vector<Ride*> rides;
    rides.push_back(new Ride(201, "Home", "Theatre", 15, 2));
    rides.push_back(new StandardRide(201, "Downtown", "Airport", 10, 3));
    rides.push_back(new StandardRide(203, "Train Station", "University", 7, 4));
    rides.push_back(new PremiumRide(202, "Mall", "Hotel", 5, 3));
    rides.push_back(new PremiumRide(204, "Office", "Home", 12, 4));

    // Rider requests rides
    for (Ride* ride : rides) {
        rider.requestRide(ride);
        driver.addRide(ride);
    }

    std::cout << "Driver Info:" << std::endl;
    driver.getDriverInfo();

    std::cout << "\nRider Info:" << std::endl;
    rider.viewRides();

    // Demonstrate polymorphism: Calling overridden methods via base class pointer
    cout << "\n=== Demonstrating Polymorphism: Ride Details & Fare ===\n";
    for (Ride* ride : rides) {
        ride->rideDetails();
        cout << "Total Fare: $" << ride->fare() << endl;
    }

    // Clean up allocated memory
    for (Ride* ride : rides) {
        delete ride;
    }

    return 0;
}
