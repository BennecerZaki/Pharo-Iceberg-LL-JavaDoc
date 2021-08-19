"
A Linkedlist class with some operations create node, get node by index, add node & remove node from a linked list.
"
Class {
	#name : #LinkedxList,
	#superclass : #Object,
	#instVars : [
		'head',
		'length'
	],
	#category : #'LinkedXList-Classes'
}

{ #category : #operations }
LinkedxList >> getByIndex: anIndex [

	| current |
	(anIndex < 1) | (anIndex > length) ifTrue: [ ^ nil ].
	anIndex = 1 ifTrue: [ ^ head ].
	
	current := head next.
	anIndex - 2 timesRepeat: [ current := current next  ].
	
	^ current
	
]

{ #category : #accessing }
LinkedxList >> head [
	^ head
]

{ #category : #initialization }
LinkedxList >> initialize [
	
	super initialize.
	length := 0
]

{ #category : #operations }
LinkedxList >> insertAtHead: data [

	| newNode |
	newNode := LLNode initializeWithData: data next: head.
	head := newNode.
	length := length + 1
]

{ #category : #operations }
LinkedxList >> insertAtIndex: anIndex value: aValue [
	
	| prev curr |
	
	anIndex = 1
		ifTrue: [ ^ self insertAtHead: aValue ].
	
	prev := self getByIndex: anIndex - 1.
	prev ifNil: [ ^ nil ].
	
	curr := LLNode initializeWithData: aValue next: prev next.
	prev next: curr.
	length := length + 1
]

{ #category : #accessing }
LinkedxList >> length [
	^ length 
]

{ #category : #operations }
LinkedxList >> removeHead [

	head := head next.
	length := length - 1 
]
