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
