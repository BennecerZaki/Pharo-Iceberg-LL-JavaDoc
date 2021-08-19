Class {
	#name : #LinkedxListTest,
	#superclass : #TestCase,
	#category : #'LinkedXList-Tests'
}

{ #category : #tests }
LinkedxListTest >> testGetByIndexGreaterThanListLength [

	| ll index |
	ll := LinkedxList new.
	ll insertAtHead: 20.
	ll insertAtHead: 30.
	index := ll getByIndex: 5.
	self assert: index equals: nil 
]

{ #category : #tests }
LinkedxListTest >> testGetByIndexInTheMiddleOfTheList [

	| ll index |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 20.
	ll insertAtHead: 30.
	ll insertAtHead: 50.
	
	index := ll getByIndex: 3.
	
	self assert: index data equals: 20
]

{ #category : #tests }
LinkedxListTest >> testGetByIndexLessThanOne [

	| ll index |
	ll := LinkedxList new.
	ll insertAtHead: 20.
	ll insertAtHead: 30.
	index := (ll getByIndex: 0).
	self assert: index  equals: nil
]

{ #category : #tests }
LinkedxListTest >> testGetByIndexOfTheHead [

	| ll index |
	ll := LinkedxList new.
	ll insertAtHead: 20.
	ll insertAtHead: 30.
	index := ll getByIndex: 1.
	self assert: index data equals: 30
]

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
