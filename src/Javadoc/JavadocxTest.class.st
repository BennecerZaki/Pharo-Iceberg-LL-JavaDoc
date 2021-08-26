Class {
	#name : #JavadocxTest,
	#superclass : #TestCase,
	#category : #'Javadoc-Tests'
}

{ #category : #tests }
JavadocxTest >> testFileCreation [

	| classeA file root |

	classeA := B.
	root := '/home/jpeg/Desktop/classe'.
	file := (root, classeA printString, '.txt') asFileReference.
	
	Javadoc generate:classeA at:root.
	
	file := (root, 'A.txt') asFileReference.
	self assert: file exists equals: true.
	
	file := (root, 'B.txt') asFileReference.
	self assert: file exists equals: true.
	
	file := (root, 'C.txt') asFileReference.
	self assert: file exists equals: true.
	
	file := (root, 'D.txt') asFileReference.
	self assert: file exists equals: true
]

{ #category : #tests }
JavadocxTest >> testFileExists [

	| classeA file root |

	classeA := A.
	root := '/home/jpeg/Desktop/classe'.
	file := (root, classeA printString, '.txt') asFileReference.
	
	Javadoc generate:classeA at:root.
	Javadoc generate:classeA at:root.
	
	file := (root, classeA printString, '.txt') asFileReference.

	self assert: file exists equals: true
]

{ #category : #tests }
JavadocxTest >> testGenerateDocClass [

	| classeA file root strm |

	classeA := A.
	root := '/home/jpeg/Desktop/classe'.
	file := (root, classeA printString, '.txt') asFileReference.
	
	Javadoc generate:classeA at:root.
	
	strm := file readStreamDo: [ :stream |
		stream contents
	].

	self assert: strm size equals: 162
]
