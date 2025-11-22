Profile: OnconovaTherapyLine
Parent: List
Id: onconova-therapy-line
Title: "Therapy Line Profile"
Description: """
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. 

Due to its abstract conceptual nature, it is based on a FHIR `List` to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually.

**Conformance:**

List resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

// Set fixed values for List attributes
* code = $NCIT#C133518 "Line of Therapy"

* status = #current 
* mode = #working

// Use Onconova profiles for references
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The patient receiving the therapy"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

* entry MS
* entry.item only Reference(OnconovaMedicationAdministration or OnconovaRadiotherapyCourseSummary or OnconovaSurgicalProcedure)
* entry ^short = "The therapies or procedures that are part of this therapy line"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

// Add extensions for therapy line details
* extension contains TherapyLinePeriod named therapyLinePeriod 0..1
* extension[therapyLinePeriod] ^short = "The period during which the therapy line was performed"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

* extension contains TherapyLineNumber named therapyLineNumber 0..1
* extension[therapyLineNumber] ^short = "The number representing the sequence of the therapy line in the overall treatment regimen"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

* extension contains TherapyLineIntent named therapyLineIntent 0..1
* extension[therapyLineIntent] ^short = "The intent of the therapy line, such as curative or palliative"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

* extension contains TherapyLineProgressionFreeSurvival named therapyLineProgressionFreeSurvival 0..1
* extension[therapyLineProgressionFreeSurvival] ^short = "The progression-free survival duration for the therapy line"
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

* extension contains TherapyLineProgressionDate named therapyLineProgressionDate 0..1
* extension[therapyLineProgressionDate] ^short = "The date when disease progression was observed during or after the therapy line" 
* insert Obligations(subject, #MAY:ignore, #MAY:persist)

// Annotate unused elements
* insert NotUsed(encounter)
* insert NotUsed(source)
* insert NotUsed(date)

// Constraints
* obeys o-lin-req-1 and o-lin-req-2 and o-lin-req-3

Invariant: o-lin-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-lin-req-2
Description: "The therapyLineNumber extension is required and must be provided."
Expression: "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number').exists()"
Severity: #error

Invariant: o-lin-req-3
Description: "The therapyLineIntent extension is required and must be provided."
Expression: "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent').exists()"
Severity: #error

//================
// Extensions
//================

Extension: TherapyLinePeriod 
Id: onconova-ext-therapy-line-period
Title: "Therapy Line Period"
Description: "The period during which the therapy line was performed."
* value[x] only Period

Extension: TherapyLineNumber
Id: onconova-ext-therapy-line-number
Title: "Therapy Line Number"
Description: "The number representing the sequence of the therapy line in the overall treatment regimen."
* value[x] only positiveInt

Extension: TherapyLineIntent
Id: onconova-ext-therapy-line-intent
Title: "Therapy Line Intent"
Description: "The intent of the therapy line, such as curative or palliative."
* value[x] only CodeableConcept
* valueCodeableConcept from ProcedureIntentVS (required)

Extension: TherapyLineProgressionFreeSurvival
Id: onconova-ext-therapy-line-progression-free-survival
Title: "Therapy Line Progression-Free Survival"
Description: "The progression-free survival duration for the therapy line."
* value[x] only Duration

Extension: TherapyLineProgressionDate 
Id: onconova-ext-therapy-line-progression-date
Title: "Therapy Line Progression Date"
Description: "The date when disease progression was observed during or after the therapy line."
* value[x] only date