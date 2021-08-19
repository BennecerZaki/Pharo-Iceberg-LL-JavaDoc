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

{ #category : #accessing }
LinkedxList >> length [
	^ length 
]
