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

{ #category : #accessing }
LLNode >> data [
	^ data
]

{ #category : #accessing }
LLNode >> data: aData [

	data := aData
]

{ #category : #accessing }
LLNode >> next [
	^ next
]

{ #category : #accessing }
LLNode >> next: aNext [

	next := aNext
]
