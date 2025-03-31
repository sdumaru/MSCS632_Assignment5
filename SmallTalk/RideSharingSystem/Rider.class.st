Class {
	#name : 'Rider',
	#superclass : 'Object',
	#instVars : [
		'riderID',
		'name',
		'requestedRides'
	],
	#category : 'RideSharingSystem',
	#package : 'RideSharingSystem'
}

{ #category : 'initialization' }
Rider >> initializeWithId: id name: riderName [
	riderID := id.
	name := riderName.
	requestedRides := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
Rider >> requestRide: ride [
	requestedRides add: ride.
]

{ #category : 'as yet unclassified' }
Rider >> viewRides [
	Transcript show: 'Rider ID: ', riderID printString, ' Name: ', name, ' Total Requested Rides: ', requestedRides size printString; cr.
]
