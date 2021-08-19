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

{ #category : #tests }
LinkedxListTest >> testInsertAtIndexGreaterThanListLength [

	| ll |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 3.
	ll insertAtHead: 4.
	ll insertAtIndex: 5 value: 20.
	
	self assert: ll length equals: 2
]

{ #category : #tests }
LinkedxListTest >> testInsertAtIndexInTheMiddleOfTheList [

	| ll |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 3.
	ll insertAtHead: 4.
	ll insertAtIndex: 2 value: 20.
	
	self assert: ll length equals: 3
]

{ #category : #tests }
LinkedxListTest >> testInsertAtIndexLessThanOne [

	| ll |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 3.
	ll insertAtHead: 4.
	ll insertAtIndex: 0 value: 20.
	
	self assert: ll length equals: 2
	
]

{ #category : #tests }
LinkedxListTest >> testInsertAtIndexOfTheHead [

	| ll |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 3.
	ll insertAtHead: 4.
	ll insertAtIndex: 1 value: 20.
	
	self assert: ll length equals: 3.
	self assert: ll head data equals: 20.
	self assert: ll head next data equals: 4.
]

{ #category : #tests }
LinkedxListTest >> testRemoveHead [

	| ll |
	
	ll := LinkedxList new.
	
	ll insertAtHead: 3.
	ll insertAtHead: 4.
	ll removeHead.
	
	self assert: ll length equals: 1.
	self assert: ll head data equals: 3.
]
