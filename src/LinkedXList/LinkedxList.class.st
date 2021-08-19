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

{ #category : #accessing }
LinkedxList >> length [
	^ length 
]
