Class {
	#name : #LinkedxListTest,
	#superclass : #TestCase,
	#category : #'LinkedXList-Tests'
}

{ #category : #tests }
LinkedxListTest >> testInitialize [ 

	| ll |
	ll := LinkedxList new.
	self assert: ll head equals: nil.
	self assert: ll length equals: 0
]
