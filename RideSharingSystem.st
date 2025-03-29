Object subclass: Ride. [
    | rideID pickupLocation dropoffLocation distance farePerMile |

    Ride class >> new Ride: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare. [
        ^ self new initializeRide: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare
    ]

    Ride >> new initializeRide: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare. [
        rideID := id.
        pickupLocation := pickup.
        dropoffLocation := dropoff.
        distance := dist.
        farePerMile := fare.
    ]

    Ride >> fare. [
        ^ distance * farePerMile
    ]

    Ride >> rideDetails. [
        Transcript show: 'Ride ID: ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', farePerMile printString; cr.
    ]
]

Ride subclass: StandardRide. [
    StandardRide class >> new Ride: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare. [
        ^ self new initializeRide: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare
    ]

    StandardRide >> fare. [
        ^ distance * farePerMile * 2
    ]

    StandardRide >> rideDetails. [
        Transcript show: 'Standard Ride ID: ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', (2 * farePerMile) printString; cr.
    ]
]

Ride subclass: PremiumRide. [
    PremiumRide class >> new Ride: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare. [
        ^ self new initializeRide: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare
    ]

    PremiumRide >> fare. [
        ^ distance * farePerMile * 5
    ]

    PremiumRide >> rideDetails. [
        Transcript show: 'Premium Ride ID: ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', (5 * farePerMile) printString; cr.
    ]
].

Object subclass: Driver. [
    | driverID name rating assignedRides |

    Driver class >> new Driver: id name: driverName rating: driverRating. [
        ^ self new initializeDriver: id name: driverName rating: driverRating
    ]

    Driver >> new initializeDriver: id name: driverName rating: driverRating. [
        driverID := id.
        name := driverName.
        rating := driverRating.
        assignedRides := OrderedCollection new.
    ]

    Driver >> new addRide: ride. [
        assignedRides add: ride.
    ]

    Driver >> new getDriverInfo. [
        Transcript show: 'Driver ID: ', driverID printString, ' Name: ', name, ' Rating: ', rating printString, ' Total Assigned Rides: ', assignedRides size printString; cr.
    ]
].

Object subclass: Rider. [
    | riderID name requestedRides |

    Rider class >> new Rider: id name: riderName. [
        ^ self new initializeRider: id name: riderName
    ]

    Rider >> new initializeRider: id name: riderName. [
        riderID := id.
        name := riderName.
        requestedRides := OrderedCollection new.
    ]

    Rider >> new requestRide: ride. [
        requestedRides add: ride.
    ]

    Rider >> new viewRides. [
        Transcript show: 'Rider ID: ', riderID printString, ' Name: ', name, ' Total Requested Rides: ', requestedRides size printString; cr.
    ]
].

"Object << #Driver
	layout: FixedLayout;
	traits: {};
	slots: {};
	sharedVariables: {};
	sharedPools: {};
	tag: 'Objects' ;
	package: 'Kernel'

Object << #Rider
	layout: FixedLayout;
	traits: {};
	slots: {};
	sharedVariables: {};
	sharedPools: {};
	tag: 'Objects' ;
	package: 'Kernel'
	
Object << #Ride
	layout: FixedLayout;
	traits: {};
	slots: {};
	sharedVariables: {};
	sharedPools: {};
	tag: 'Objects' ;
	package: 'Kernel'"
	
"=== TESTING THE SYSTEM ==="

"rider := Rider new Rider: 1 name: 'Rajita'.
driver := Driver new Driver: 101 name: 'Sujan' rating: 4.8.

rides := OrderedCollection new.
rides add: (Ride newRide: 201 pickup: 'Home' dropoff: 'Theatre' distance: 15 farePerMile: 2).
rides add: (StandardRide newRide: 201 pickup: 'Downtown' dropoff: 'Airport' distance: 10 farePerMile: 3).
rides add: (StandardRide newRide: 203 pickup: 'Train Station' dropoff: 'University' distance: 7 farePerMile: 4).
rides add: (PremiumRide newRide: 202 pickup: 'Mall' dropoff: 'Hotel' distance: 5 farePerMile: 3).
rides add: (PremiumRide newRide: 204 pickup: 'Office' dropoff: 'Home' distance: 12 farePerMile: 4).

"Rider requests rides"
rides do: [ :ride | 
    rider requestRide: ride.
    driver addRide: ride.
].

"Show Driver and Rider Info"
Transcript show: 'Driver Info:'; cr.
driver getDriverInfo.

Transcript show: 'Rider Info:'; cr.
rider viewRides.

"Demonstrating Polymorphism"
Transcript show: '=== Demonstrating Polymorphism: Ride Details & Fare ==='; cr.
rides do: [ :ride | 
    ride rideDetails.
    Transcript show: 'Total Fare: $', ride fare printString; cr.
]."