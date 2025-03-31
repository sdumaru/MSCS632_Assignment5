Class {
	#name : 'Ride',
	#superclass : 'Object',
	#instVars : [
		'rideID',
		'pickupLocation',
		'dropoffLocation',
		'distance',
		'farePerMile'
	],
	#category : 'RideSharingSystem',
	#package : 'RideSharingSystem'
}

{ #category : 'initialization' }
Ride >> fare [
	^ distance * farePerMile 
]

{ #category : 'initialization' }
Ride >> initialize: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare [
	rideID := id.
	pickupLocation  := pickup.
	dropoffLocation := dropoff.
	distance := dist.
	farePerMile := fare.
]

{ #category : 'initialization' }
Ride >> initializeWithId: id pickup: pickup dropoff: dropoff distance: dist farePerMile: fare [
	rideID := id.
	pickupLocation  := pickup.
	dropoffLocation := dropoff.
	distance := dist.
	farePerMile := fare.
]

{ #category : 'initialization' }
Ride >> rideDetails [
	Transcript show: 'Ride ID ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', farePerMile printString; cr. 
]
