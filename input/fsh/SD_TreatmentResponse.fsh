Profile: OnconovaImagingDiseaseStatus
Parent: CancerDiseaseStatus
Id: onconova-imaging-disease-status
Title: "Imaging Disease Status Profile"
Description: """
A profile representing the imaging-based disease status of a cancer patient.

It constrains the mCODE [CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status) to restrict it to imaging-based monitoring evaluated based on RECIST criteria.

**Conformance:**

Observation resources representing a disease status obtained through imaging techniques in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* extension[evidenceType].valueCodeableConcept = $SNOMED#363679005 "Imaging (procedure)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* focus 1..* MS
* focus only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method from CancerImagingMethods (required)
* insert Obligations(method, #SHALL:populate, #SHOULD:persist)

* bodySite from ObservationBodySites (required)
* insert Obligations(bodySite, #SHALL:populate-if-known, #SHOULD:persist)

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from https://loinc.org/LL4721-8/ (required)
* insert Obligations(valueCodeableConcept, #SHALL:populate, #SHOULD:persist)

* valueCodeableConcept.extension contains TreatmentResponseRecistIsInterpreted named interpreted 0..1 MS
* insert Obligations(valueCodeableConcept.extension[interpreted], #SHOULD:populate-if-known, #SHOULD:persist)

* effective[x] 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* insert NotUsed(status)
* insert NotUsed(specimen)
* insert NotUsed(performer)
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(derivedFrom)
* insert NotUsed(basedOn)
* insert NotUsed(partOf)
* insert NotUsed(encounter)
* insert NotUsed(component)

// Constraints
* obeys o-res-req-1 and  o-res-req-2 and o-res-req-3 and o-res-req-4

Invariant: o-res-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-res-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-res-req-3
Description: "The valueCodeableConcept element is required and must be provided."
Expression: "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()"
Severity: #error

Invariant: o-res-req-4
Description: "The method element is required and must be provided."
Expression: "method.exists() and method.hasValue()"
Severity: #error

//==================
// Extensions
//==================

Extension: TreatmentResponseRecistIsInterpreted
Id: onconova-ext-treatment-response-recist-is-interpreted
Title: "Treatment Response RECIST Is Interpreted"
Description: "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted."
* value[x] only boolean
