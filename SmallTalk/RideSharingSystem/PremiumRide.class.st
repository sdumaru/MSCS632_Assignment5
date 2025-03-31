Class {
	#name : 'PremiumRide',
	#superclass : 'Ride',
	#category : 'RideSharingSystem',
	#package : 'RideSharingSystem'
}

{ #category : 'initialization' }
PremiumRide >> fare [
	^ distance * farePerMile * 5
]

{ #category : 'initialization' }
PremiumRide >> rideDetails [
	Transcript show: 'Premium Ride ID ', rideID printString, ' From ', pickupLocation, ' to ', dropoffLocation, ' Distance: ', distance printString, ' miles. Fare per mile: $', (5 * farePerMile) printString; cr. 
]
