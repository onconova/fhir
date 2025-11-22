Profile: OnconovaSurgicalProcedure
Parent: CancerRelatedSurgicalProcedure
Id: onconova-surgical-procedure
Title: "Surgical Procedure Profile"
Description: """
A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. 

It extends the base mCODE [CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure) to include specific constraints and requirements for Onconova.

**Conformance:**

Procedure resources representing a surgery in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* performed[x] only dateTime
* performedDateTime ^short = "The date on which the surgical procedure was performed"
* insert Obligations(performedDateTime, #SHALL:populate, #SHOULD:persist)

* code 1..1 MS    
* code from SurgicalProcedures (required)
* insert Obligations(code, #SHALL:populate, #SHOULD:persist)

* reasonReference 1..* MS
* reasonReference ^short = "The condition(s) that motivated the surgical procedure"
* reasonReference only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* insert Obligations(reasonReference, #SHALL:populate, #SHOULD:persist)

* extension contains TherapyLineReference named therapyLine 0..1 
* extension[therapyLine] ^short = "Reference to the therapy line associated with this treatment"
* insert Obligations(extension[therapyLine], #MAY:ignore, #MAY:persist)

* extension[treatmentIntent] 1..1 MS
* insert Obligations(extension[treatmentIntent], #SHALL:populate, #SHOULD:persist)


// Annotate unused elements
* insert NotUsed(status)
* insert NotUsed(basedOn)
* insert NotUsed(partOf)
* insert NotUsed(statusReason)
* insert NotUsed(encounter)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(performer)
* insert NotUsed(location)
* insert NotUsed(reasonCode)
* insert NotUsed(report)
* insert NotUsed(complication)
* insert NotUsed(complicationDetail)
* insert NotUsed(followUp)
* insert NotUsed(focalDevice)
* insert NotUsed(usedReference)
* insert NotUsed(usedCode)

// Constraints
* obeys o-sur-req-1 and o-sur-req-2 and o-sur-req-3 and o-sur-req-4

Invariant: o-sur-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-sur-req-2
Description: "The performedDateTime element is required and must be provided."
Expression: "performedDateTime.exists() and performedDateTime.hasValue()"
Severity: #error

Invariant: o-sur-req-3
Description: "The code element is required and must be provided."
Expression: "code.exists() and code.coding.exists()"
Severity: #error

Invariant: o-sur-req-4
Description: "The treatmentIntent extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent').exists()"
Severity: #error