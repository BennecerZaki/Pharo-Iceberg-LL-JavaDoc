"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestLinkedXList,
	#superclass : #PackageManifest,
	#category : #'LinkedXList-Manifest'
}

{ #category : #'code-critics' }
ManifestLinkedXList class >> ruleReTestClassNotInPackageWithTestEndingNameV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#LinkedXList)) #'2021-08-19T22:51:11.516656+01:00') )
]
