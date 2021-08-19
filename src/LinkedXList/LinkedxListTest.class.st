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

{ #category : #tests }
LinkedxListTest >> testInsertAtHead [

	| theLL oldHead |
	theLL := LinkedxList new.
	theLL insertAtHead: 20.
	oldHead := theLL head.
	theLL insertAtHead: 30.
	self assert: theLL head data equals: 30.
	self assert: theLL head next equals: oldHead .
	self assert: theLL length equals: 2.
		
]
