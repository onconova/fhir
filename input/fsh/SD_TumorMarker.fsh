Profile: OnconovaTumorMarker
Id: onconova-tumor-marker
Title: "Tumor Marker Profile"
Parent: TumorMarkerTest
Description: """
A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. 

This profile extends the base mCODE [TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test) to include specific constraints and requirements for Onconova.

If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level).

**Conformance:**

Observation resources representing a tumor marker in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* code from TumorMarkerTests (required)
* insert ObligationsWithUscdi(code, #SHALL:populate, #SHOULD:persist)

* code.extension contains TumorMarkerAnalyte named tumorMarkerAnalyte 1..1  MS 
* insert Obligations(code.extension[tumorMarkerAnalyte], #SHALL:populate, #SHOULD:persist)

* extension[relatedCondition] 1..* MS
* insert Obligations(extension[relatedCondition], #SHALL:populate, #SHOULD:persist)

* value[x] 1..1 MS
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert NotUsed(status)
* insert NotUsed(focus)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(performer)
* insert NotUsed(bodySite)
* insert NotUsed(interpretation)
* insert NotUsed(specimen)
* insert NotUsed(device)    
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* insert NotUsed(component)

* obeys o-tma-req-1 and o-tma-req-2 and o-tma-req-3

Invariant: o-tma-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists()"
Severity: #error

Invariant: o-tma-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-tma-req-3
Description: "The tumorMarkerAnalyte element is required and must be provided."
Expression: "code.extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte').exists()"
Severity: #error

//==================
// Extensions
//==================

Extension: TumorMarkerAnalyte 
Id: onconova-ext-tumor-marker-analyte
Title: "Tumor Marker Analyte"
Description: "The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA."
Context: OnconovaTumorMarker.code.extension
* value[x] only CodeableConcept
* valueCodeableConcept from TumorMarkerAnalytes (required)
