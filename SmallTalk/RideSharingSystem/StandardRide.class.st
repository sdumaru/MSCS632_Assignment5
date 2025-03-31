Class {
	#name : 'StandardRide',
	#superclass : 'Ride',
	#category : 'RideSharingSystem',
	#package : 'RideSharingSystem'
}

{ #category : 'initialization' }
StandardRide >> fare [ 
	^ distance * farePerMile * 2
]

{ #category : 'initialization' }
StandardRide >> rideDetails [
	Transcript show: 'Standard Ride ID ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', (2 * farePerMile) printString; cr. 
]
