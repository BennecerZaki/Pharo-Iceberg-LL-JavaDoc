"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestJavadoc,
	#superclass : #PackageManifest,
	#category : #'Javadoc-Manifest'
}

{ #category : #'code-critics' }
ManifestJavadoc class >> ruleRBSendsMethodDictRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#Javadoc)) #'2021-08-26T07:25:47.125352+01:00') )
]
