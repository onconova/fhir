Profile: OnconovaRadiotherapyCourseSummary
Parent: RadiotherapyCourseSummary
Id: onconova-radiotherapy-summary
Title: "Radiotherapy Summary Profile"
Description: """
A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element.

This profile extends the base mCODE [RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary) to include specific constraints and requirements for Onconova.

**Conformance:**

Procedure resources representing a radiotherapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* performedPeriod ^short = "The time period over which the radiotherapy course was performed"
* insert ObligationsWithUscdi(performedPeriod, #SHALL:populate, #SHOULD:persist)

* reasonReference 1..* MS
* reasonReference ^short = "The condition(s) that motivated the radiotherapy treatment"
* reasonReference only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* insert Obligations(reasonReference, #SHALL:populate, #SHOULD:persist)

* extension contains TherapyLineReference named therapyLine 0..1 
* extension[therapyLine] ^short = "Reference to the therapy line associated with this treatment"
* insert Obligations(extension[therapyLine], #MAY:ignore, #MAY:persist)

* statusReason from TreatmentTerminationReasons (required)
* insert Obligations(statusReason, #SHALL:populate-if-known, #SHOULD:persist)

* extension[actualNumberOfSessions] 1..1 MS
* insert Obligations(extension[actualNumberOfSessions], #SHALL:populate, #SHOULD:persist)

* extension[treatmentIntent] 1..1 MS
* extension[treatmentIntent].valueCodeableConcept from TreatmentIntents (required)
* insert Obligations(extension[treatmentIntent], #SHALL:populate, #SHOULD:persist)

* insert Obligations(extension[modalityAndTechnique], #SHOULD:populate-if-known, #SHOULD:persist)
* insert Obligations(extension[doseDeliveredToVolume], #SHOULD:populate-if-known, #SHOULD:persist)

* insert NotUsed(status)
* insert NotUsed(bodySite)
* insert NotUsed(instantiatesCanonical)
* insert NotUsed(instantiatesUri)
* insert NotUsed(partOf)
* insert NotUsed(basedOn)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(performer)
* insert NotUsed(location)
* insert NotUsed(outcome)
* insert NotUsed(report)
* insert NotUsed(complication)
* insert NotUsed(complicationDetail)
* insert NotUsed(followUp)
* insert NotUsed(note)
* insert NotUsed(focalDevice)
* insert NotUsed(usedReference)
* insert NotUsed(usedCode)
* insert NotUsed(reasonCode)
* insert NotUsed(extension[terminationReason])

* obeys o-rad-req-1 and o-rad-req-2 and o-rad-req-3 and o-rad-req-4

Invariant: o-rad-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists()"
Severity: #error

Invariant: o-rad-req-2
Description: "The performedPeriod element is required and must be provided."
Expression: "performedPeriod.exists()"
Severity: #error

Invariant: o-rad-req-3
Description: "The actualNumberOfSessions extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions').exists()"
Severity: #error

Invariant: o-rad-req-4
Description: "The treatmentIntent extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent').exists()"
Severity: #error