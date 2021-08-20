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
	
	
			file writeStreamDo: [ :stream |
				stream 
					nextPutAll: 'Classe ';
					nextPutAll: aClass printString;
					nextPut: Character cr;
					nextPut: Character cr;
					nextPutAll: 'Super classe: '.
				(sup = Object) ifFalse: [ 
					stream
						nextPutAll: ' --> ';
						nextPutAll: aString;
						nextPutAll: sup printString;
						nextPutAll: '.txt'.
			 		].
				stream 
					nextPut: Character cr;
					nextPutAll: 'Subclasses: ';
					nextPutAll: aClass subclasses	printString;
					nextPutAll: ' --> ';
					nextPutAll: aString;
					nextPutAll: aClass subclasses printString;
					nextPutAll: '.txt';
					nextPut: Character cr	;
					nextPutAll: 'Instance variables: ';
					nextPutAll: aClass instVarNames printString;
					nextPut: Character cr	;
					nextPutAll: 'Methods: ';
					nextPutAll: aClass methodDict printString
				].
	
			(sup = Object) | (sup = TestCase) ifFalse: [ self generate: sup at: aString ].
			(sub size ~~ 0) ifTrue: [ sub do: [ :i | self generate: i at: aString ]. ].
 	].


]
