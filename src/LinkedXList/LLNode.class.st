"
A Linkedlist node class with custom initilizer to use it in the linkedlist.
"
Class {
	#name : #LLNode,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #'LinkedXList-Classes'
}

{ #category : #initialization }
LLNode class >> initializeWithData: aData [

	^ self new data: aData
]

{ #category : #initialization }
LLNode class >> initializeWithData: aData next: aNext [

	^ self new data: aData ; next: aNext
]

{ #category : #accessing }
LLNode >> data [
	^ data
]

{ #category : #accessing }
LLNode >> data: aData [

	data := aData
]

{ #category : #initialization }
LLNode >> initialize [

	super initialize.
	data := 0.
]

{ #category : #accessing }
LLNode >> next [
	^ next
]

{ #category : #accessing }
LLNode >> next: aNext [

	next := aNext
]
