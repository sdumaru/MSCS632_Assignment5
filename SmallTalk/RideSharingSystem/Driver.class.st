Class {
	#name : 'Driver',
	#superclass : 'Object',
	#instVars : [
		'driverID',
		'name',
		'rating',
		'assignedRides'
	],
	#category : 'RideSharingSystem',
	#package : 'RideSharingSystem'
}

{ #category : 'initialization' }
Driver >> addRide: ride [
	assignedRides add: ride.
]

{ #category : 'initialization' }
Driver >> getDriverInfo [
	Transcript show: 'Driver ID: ', driverID printString, ' Name: ', name, ' Rating: ', rating printString, ' Total Assigned Rides: ', assignedRides size printString; cr.
]

{ #category : 'initialization' }
Driver >> initializeWithId: id name: driverName rating: driverRating [
	driverID := id.
	name := driverName.
	rating := driverRating.
	assignedRides := OrderedCollection new.
]
