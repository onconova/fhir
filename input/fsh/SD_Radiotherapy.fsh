Profile: OnconovaRadiotherapySummary
Parent: RadiotherapyCourseSummary
Id: onconova-radiotherapy-summary
Title: "Radiotherapy Summary Profile"
Description: """
A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element.

This profile extends the base mCODE [RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary) to include specific constraints and requirements for Onconova.
"""

// Use Onconova profiles for references 
* subject only Reference(OnconovaCancerPatient)

// Add extension for referencing the therapy line
* extension contains TherapyLineReference named therapyLine 0..1 
* extension[therapyLine] ^short = "Reference to the therapy line associated with this treatment"

// Constrain the valuesets
* statusReason from TreatmentTerminationReasons (required)

* obeys o-rad-req-1 and 
    o-rad-req-2 and 
    o-rad-req-3 and 
    o-rad-req-4

Invariant: o-rad-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-rad-req-2
Description: "The performedPeriod element is required and must be provided."
Expression: "performedPeriod.exists() and performedPeriod.hasValue()"
Severity: #error

Invariant: o-rad-req-3
Description: "The actualNumberOfSessions extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions').exists()"
Severity: #error

Invariant: o-rad-req-4
Description: "The treatmentIntent extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent').exists()"
Severity: #error