Profile: OnconovaComorbidities
Parent: Comorbidities
Id: onconova-comorbidities
Title: "Comorbidities Profile"
Description: """
A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes.

The profile constrains the mCODE [Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities) to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. 

**Conformance:**

Observation resources representing a generic or panel comorbidities assessment in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* value[x] only Quantity
* valueQuantity.unit = "1"
* valueQuantity ^short = "Comorbidity Index Score"
* insert ObligationsWithUscdi(valueQuantity, #SHOULD:populate-if-known, #SHOULD:persist)

* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method from ComorbidityPanels (required)
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* extension[comorbidConditionPresent].valueCodeableConcept from ICD10Conditions (required)
* insert Obligations(extension[comorbidConditionPresent].valueCodeableConcept, #SHALL:populate, #SHOULD:persist)

* extension[comorbidConditionAbsent].valueCodeableConcept from ICD10Conditions (required)
* insert Obligations(extension[comorbidConditionAbsent].valueCodeableConcept, #SHALL:populate, #SHOULD:persist)

// Annotate unused elements for this profile
* insert NotUsed(status)
* insert NotUsed(encounter) 
* insert NotUsed(basedOn) 
* insert NotUsed(partOf) 
* insert NotUsed(performer) 
* insert NotUsed(issued) 
* insert NotUsed(interpretation) 
* insert NotUsed(derivedFrom) 
* insert NotUsed(referenceRange) 


// Constraints 
* obeys com-1 and com-req-1 and com-req-2 and com-req-3

Invariant: com-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: com-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: com-req-3
Description: "The focus element is required and must be provided."
Expression: "focus.exists() and focus.resolve().is(Condition)"
Severity: #error

Invariant: com-1
Description: "If an index score is provided, then the comorbidity panel method must also be provided."
Expression: "valueQuantity.exists() implies method.exists()"
Severity: #error