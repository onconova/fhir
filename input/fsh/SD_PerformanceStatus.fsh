Profile: OnconovaECOGPerformanceStatus
Parent: ECOGPerformanceStatus
Id: onconova-ecog-performance-status
Title: "ECOG Performance Status Profile"
Description: """
A profile representing the (Eastern Cooperative Oncology Group) ECOG performance status score for a cancer patient.

Adds minimal constraints to the mCODE [`ECOGPerformanceStatus` profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status) to account for Onconova specifics.

**Conformance:**

Observation resources representing an ECOG performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
""" 

* valueInteger 1..1 MS
* insert Obligations(valueInteger, #SHALL:populate, #SHOULD:persist)

* interpretation 0..1 MS
* insert Obligations(interpretation, #SHOULD:populate, #MAY:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)
* insert Obligations(interpretation, #SHOULD:populate, #MAY:persist)

* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* focus 1..* MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* insert NotUsed(derivedFrom)
* insert NotUsed(referenceRange)
* insert NotUsed(method)
* insert NotUsed(dataAbsentReason)
* insert NotUsed(performer)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(partOf)
* insert NotUsed(basedOn)

* obeys o-obs-req-1 and o-obs-req-2


Profile: OnconovaKarnofskyPerformanceStatus
Parent: KarnofskyPerformanceStatus
Id: onconova-karnofsky-performance-status
Title: "Karnofsky Performance Status Profile"
Description: """
A profile representing the Karnofsky performance status score for a cancer patient.

Adds minimal constraints to the mCODE [`KarnofskyPerformanceStatus` profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status) to account for Onconova specifics.

**Conformance:**

Observation resources representing a Karnofsky performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
""" 

* valueInteger 1..1 MS
* insert Obligations(valueInteger, #SHALL:populate, #SHOULD:persist)

* interpretation 0..1 MS
* insert Obligations(interpretation, #SHOULD:populate, #MAY:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* focus 1..* MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

// Annotate unused elements
* insert NotUsed(status)
* insert NotUsed(derivedFrom)
* insert NotUsed(referenceRange)
* insert NotUsed(method)
* insert NotUsed(dataAbsentReason)
* insert NotUsed(performer)
* insert NotUsed(encounter)
* insert NotUsed(focus)
* insert NotUsed(issued)
* insert NotUsed(partOf)
* insert NotUsed(basedOn)

// Constraints
* obeys o-obs-req-1 and o-obs-req-2


Invariant: o-obs-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-obs-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error