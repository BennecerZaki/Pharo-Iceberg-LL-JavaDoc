Class {
	#name : #LLNodeTest,
	#superclass : #TestCase,
	#category : #'LinkedXList-Tests'
}

{ #category : #tests }
LLNodeTest >> testInitialize [ 

	| llNode |
	llNode := LLNode new.
	self assert: llNode data equals: 0.
	self assert: llNode next equals: nil.
]

{ #category : #tests }
LLNodeTest >> testInitializeWithCustomValues [

	| llNode |
	llNode := LLNode initializeWithData: 5 next: 5.
	self assert: llNode data equals: 5.
	self assert: llNode next equals: 5.
		
]
