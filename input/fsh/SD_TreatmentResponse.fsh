Profile: OnconovaImagingDiseaseStatus
Parent: CancerDiseaseStatus
Id: onconova-imaging-disease-status
Title: "Imaging Disease Status Profile"
Description: """
A profile representing the imaging-based disease status of a cancer patient.

It constrains the mCODE [CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status) to restrict it to imaging-based monitoring evaluated based on RECIST criteria.
"""

* status = #final

// Use Onconova profile references
* subject only Reference(OnconovaCancerPatient)
* focus only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)

// Fix the the of evidence to imaging
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* extension[evidenceType].valueCodeableConcept = $SNOMED#363679005 "Imaging (procedure)"

// Constrain the valuesets
* method from CancerImagingMethods (required)
* bodySite from ObservationBodySites (required)

// Annotate unused elements
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
* obeys o-res-req-1 and 
    o-res-req-2 and 
    o-res-req-3 and 
    o-res-req-4

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

Extension: RecistIsInterpreted
Id: onconova-ext-recist-is-interpreted
Title: "Recist Is Interpreted"
Description: "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted."
* value[x] only boolean
