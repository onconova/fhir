Profile: OnconovaPrimaryCancerCondition
Parent: PrimaryCancerCondition
Id: onconova-primary-cancer-condition
Title: "Primary Cancer Condition Profile"
Description: """
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

It constrains the mCODE [PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 

Local and regional recurrences are indicated using the `clinicalStatus` and `clinicalStatus.extension` to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional).

**Conformance:**

Condition resources representing a primary or recurrent neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 

"""

* code = $SNOMED#363346000 "Malignant neoplastic disease"

* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* extension[histologyMorphologyBehavior] 1..1
* extension[histologyMorphologyBehavior].valueCodeableConcept from ICDO3MorphologyBehaviors (required)
* insert Obligations(extension[histologyMorphologyBehavior], #SHALL:populate, #SHOULD:persist)

* extension contains HistologicalDifferentiation named differentiation 0..1 MS
* insert Obligations(extension[differentiation], #SHOULD:populate-if-known, #SHOULD:persist)

* bodySite 1..1
* bodySite from ICDO3Topographies (required)
* insert Obligations(bodySite, #SHALL:populate, #SHOULD:persist)
* insert Obligations(bodySite.extension[lateralityQualifier], #SHOULD:populate-if-known, #SHOULD:persist)

* clinicalStatus.extension contains PrimaryCancerRecurrenceType named recurrenceType 0..1
* insert Obligations(clinicalStatus.extension[recurrenceType], #SHALL:populate-if-known, #SHOULD:persist)
* clinicalStatus.extension contains PrimaryCancerRecurrenceOf named recurrenceOf 0..1 MS
* insert Obligations(clinicalStatus.extension[recurrenceOf], #SHALL:populate-if-known, #SHOULD:persist)


* insert Obligations(extension[assertedDate], #SHALL:populate, #SHOULD:persist)

// Annotate unused elements to indicate they are not supported in this profile
* insert NotUsed(stage)
* insert NotUsed(evidence)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(verificationStatus)
* insert NotUsed(recordedDate)
* insert NotUsed(encounter)
* insert NotUsed(severity)
* insert NotUsed(bodySite.extension[locationQualifier])

// Constraints 
* obeys o-con-1 and 
    o-con-2 and
    o-con-req-1 and
    o-con-req-2 and
    o-con-req-3 and 
    o-con-req-4



Profile: OnconovaSecondaryCancerCondition
Parent: SecondaryCancerCondition
Id: onconova-secondary-cancer-condition
Title: "Secondary Cancer Condition Profile"
Description: """
A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

It constrains the mCODE [SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.

**Conformance:**

Condition resources representing a metastatic neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $SNOMED#128462008 "Secondary malignant neoplastic disease"

* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* extension[relatedPrimaryCancerCondition].valueReference only Reference(OnconovaPrimaryCancerCondition) 
* insert Obligations(extension[relatedPrimaryCancerCondition], #SHALL:populate, #SHOULD:persist)

* extension[histologyMorphologyBehavior] 1..1
* extension[histologyMorphologyBehavior].valueCodeableConcept from ICDO3MorphologyBehaviors (required)
* insert Obligations(extension[histologyMorphologyBehavior], #SHALL:populate, #SHOULD:persist)

* extension contains HistologicalDifferentiation named differentiation 0..1 MS
* insert Obligations(extension[differentiation], #SHOULD:populate-if-known, #SHOULD:persist)

* bodySite 1..1
* bodySite from ICDO3Topographies (required)
* insert Obligations(bodySite, #SHALL:populate, #SHOULD:persist)
* insert Obligations(bodySite.extension[lateralityQualifier], #SHOULD:populate-if-known, #SHOULD:persist)

* insert Obligations(extension[assertedDate], #SHALL:populate, #SHOULD:persist)

* insert NotUsed(stage)
* insert NotUsed(evidence)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(verificationStatus)
* insert NotUsed(recordedDate)
* insert NotUsed(encounter)
* insert NotUsed(severity)
* insert NotUsed(bodySite.extension[locationQualifier])

// Constraints 
* obeys o-con-req-1 and o-con-req-2 and o-con-req-3 and o-con-req-4

// ================ 
// Extensions
// ================


Extension: HistologicalDifferentiation
Id: onconova-ext-histological-differentiation
Title: "Histological Differentiation"
Description: "The histological differentiation of the tumor."
Context: OnconovaPrimaryCancerCondition.extension, OnconovaSecondaryCancerCondition.extension
* value[x] only CodeableConcept
* valueCodeableConcept from ICDO3Differentiations (required)


Extension: PrimaryCancerRecurrenceOf
Id: onconova-ext-primary-cancer-recurrence-of
Title: "Primary Cancer Recurrence Of"
Description: "Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition."
Context: OnconovaPrimaryCancerCondition.clinicalStatus.extension
* value[x] only Reference(OnconovaPrimaryCancerCondition)

Extension: PrimaryCancerRecurrenceType
Id: onconova-ext-primary-cancer-recurrence-type
Title: "Primary Cancer Recurrence Type"
Description: "Indicates the type of recurrence for the condition (local or regional)."
Context: OnconovaPrimaryCancerCondition.clinicalStatus.extension
* value[x] only CodeableConcept
* valueCodeableConcept from RecurrenceTypes (required)


// ================ 
// Invariants
// ================

Invariant: o-con-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-con-req-2
Description: "The assertedDate extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate').exists()"
Severity: #error

Invariant: o-con-req-3
Description: "The bodySite element is required and must be provided."
Expression: "bodySite.exists() and bodySite.coding.exists()"
Severity: #error

Invariant: o-con-req-4
Description: "The histologyMorphologyBehavior extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior').exists()"
Severity: #error

Invariant: o-con-1
Description: "If clinicalStatus is 'recurrence', the recurrenceOf extension must be provided."
Expression: "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-of').exists()"
Severity: #error

Invariant: o-con-2
Description: "If clinicalStatus is 'recurrence', the type of recurrence must be provided."
Expression: "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies clinicalStatus.extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type').exists()"
Severity: #error

