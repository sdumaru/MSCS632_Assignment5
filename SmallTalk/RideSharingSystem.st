"Create rider and driver"
rider := Rider new initializeWithId: 1 name: 'Rajita'.
driver := Driver new initializeWithId: 101 name: 'Sujan' rating: 4.8.

"Create a collection of rides"
rides := OrderedCollection new.
rides add: (Ride new initializeWithId: 201 pickup: 'Home' dropoff: 'Theatre' distance: 15  farePerMile: 2).
rides add: (StandardRide new initializeWithId: 202 pickup: 'Downtown' dropoff: 'Airport' distance: 10  farePerMile: 3).
rides add: (StandardRide new initializeWithId: 203 pickup: 'Train Station' dropoff: 'University' distance: 7  farePerMile: 4).
rides add: (PremiumRide new initializeWithId: 204 pickup: 'Mall' dropoff: 'Hotel' distance: 5  farePerMile: 3).
rides add: (PremiumRide new initializeWithId: 205 pickup: 'Office' dropoff: 'Home' distance: 12  farePerMile: 4).

"Assign rides to rider and driver"
rides do: [ :ride |
	rider requestRide: ride.
	driver addRide: ride.
].

"Print driver and rider details"
Transcript show: 'Driver Info:'; cr.
driver getDriverInfo.

Transcript show: 'Rider Info:'; cr.
rider viewRides.

"Demonstrate Polymorphism"
Transcript show: '=== Demonstrating Polymorphism: Ride Details & Fare ==='; cr.
rides do: [ :ride |
	ride rideDetails.
	Transcript show: 'Total Fare: $', ride fare printString; cr.
]