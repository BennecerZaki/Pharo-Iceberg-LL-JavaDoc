Class {
	#name : #Javadoc,
	#superclass : #Object,
	#category : #Javadoc
}

{ #category : #operations }
Javadoc class >> generate: aClass at: aString [ 

	| file sup sub |
	
	aClass isCollection 
		ifTrue: [ aClass do: [ :i | self generate: i at: aString ]. ];
		ifFalse: [ 
			sup := aClass superclass.
			sub := aClass subclasses.
			file := (aString, aClass printString, '.txt') asFileReference .
			file exists ifTrue: [ ^ nil ].
			self printOnFile: aString withClass: aClass.
			
			(sup = Object) | (sup = TestCase) ifFalse: [ self generate: sup at: aString ].
			(sub size ~~ 0) ifTrue: [ sub do: [ :i | self generate: i at: aString ]. ].
 	].


]

{ #category : #printing }
Javadoc class >> printClass: aClass onFile: aFile [

	aFile writeStreamDo: [ :stream |
		stream 
			nextPutAll: 'Classe ';
			nextPutAll: aClass printString;
			nextPut: Character cr;
			nextPut: Character cr
	].
	
]

{ #category : #printing }
Javadoc class >> printInstVarOf: aClass onFile: aFile [

	| strm |
	
	strm := aFile readStreamDo: [ :stream |
		stream contents
	].

	aFile writeStreamDo: [ :stream |
		stream 
			nextPutAll: strm;
			nextPutAll: 'Instance variables: ';
			nextPutAll: aClass instVarNames printString;
			nextPut: Character cr
	].
	
]

{ #category : #printing }
Javadoc class >> printMethodsOf: aClass onFile: aFile [

	| strm |
	
	strm := aFile readStreamDo: [ :stream |
		stream contents
	].

	aFile writeStreamDo: [ :stream |
		stream 
			nextPutAll: strm;
			nextPutAll: 'Methods: ';
			nextPutAll: aClass methodDict printString
	].
	
]

{ #category : #printing }
Javadoc class >> printOnFile: aString withClass: aClass [

	| file |
	
	file := (aString, aClass printString, '.txt') asFileReference .
	self printClass: aClass onFile: file.
	self printSuperClass: aClass onFile: file withPath: aString.
	self printSubClassesOf: aClass onFile: file withPath: aString.
	self printInstVarOf: aClass onFile: file.
	self printMethodsOf: aClass onFile: file
	
]

{ #category : #printing }
Javadoc class >> printSubClassesOf: aClass onFile: aFile withPath: aPath [

	| strm |
	
	strm := aFile readStreamDo: [ :stream |
		stream contents
	].

	aFile writeStreamDo: [ :stream |
		stream 
			nextPutAll: strm;
			nextPut: Character cr;
			nextPutAll: 'Subclasses: ';
			nextPutAll: aClass subclasses	printString;
			nextPutAll: ' --> ';
			nextPutAll: aPath;
			nextPutAll: aClass subclasses printString;
			nextPutAll: '.txt';
			nextPut: Character cr
	].
	
]

{ #category : #printing }
Javadoc class >> printSuperClass: aClass onFile: aFile withPath: aPath [

	| strm |
	
	strm := aFile readStreamDo: [ :stream |
		stream contents
	].

	aFile writeStreamDo: [ :stream |
		stream 
			nextPutAll: strm;
			nextPutAll: 'Super classe: '.
		((aClass superclass) = Object) ifFalse: [ 
			stream
				nextPutAll: aClass superclass printString;
				nextPutAll: ' --> ';
				nextPutAll: aPath;
				nextPutAll: aClass superclass printString;
				nextPutAll: '.txt'.
	 		].
	].
	
]
