Profile: OnconovaTherapyLine
Parent: EpisodeOfCare
Id: onconova-therapy-line
Title: "Therapy Line Profile"
Description: """
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. 
It is based on a FHIR `EpisodeOfCare` to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing `Procedure` and `MedicationAdministration` resources and are not usually created manually.

**Conformance:**

EpisodeOfCare resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* type = $NCIT#C133518 "Line of Therapy"

* patient 1..1 MS
* patient only Reference(OnconovaCancerPatient)
* patient ^short = "The patient receiving the therapy"
* insert Obligations(patient, #SHALL:populate, #SHOULD:persist)

* period 0..1 MS
* period ^short = "The period during which the therapy line was performed"
* insert Obligations(period, #MAY:ignore, #MAY:persist)

* extension contains TherapyLineNumber named therapyLineNumber 0..1
* extension[therapyLineNumber] ^short = "The number representing the sequence of the therapy line in the overall treatment regimen"
* insert Obligations(extension[therapyLineNumber], #SHALL:populate, #SHOULD:persist)

* extension contains TherapyLineIntent named therapyLineIntent 0..1
* extension[therapyLineIntent] ^short = "The intent of the therapy line, such as curative or palliative"
* insert Obligations(extension[therapyLineIntent], #SHALL:populate, #SHOULD:persist)

* extension contains TherapyLineProgressionFreeSurvival named therapyLineProgressionFreeSurvival 0..1
* extension[therapyLineProgressionFreeSurvival] ^short = "The progression-free survival duration for the therapy line"
* insert Obligations(extension[therapyLineProgressionFreeSurvival], #MAY:ignore, #MAY:persist)

* extension contains TherapyLineProgressionDate named therapyLineProgressionDate 0..1
* extension[therapyLineProgressionDate] ^short = "The date when disease progression was observed during or after the therapy line" 
* insert Obligations(extension[therapyLineProgressionDate], #SHALL:populate, #SHOULD:persist)

* insert NotUsed(statusHistory)
* insert NotUsed(status)
* insert NotUsed(diagnosis)
* insert NotUsed(managingOrganization)
* insert NotUsed(referralRequest)
* insert NotUsed(careManager)
* insert NotUsed(team)
* insert NotUsed(account)

* obeys o-lin-req-1 and o-lin-req-2 and o-lin-req-3 and o-lin-req-4

Invariant: o-lin-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists()"
Severity: #error

Invariant: o-lin-req-2
Description: "The period element is required and must be provided."
Expression: "period.exists()"
Severity: #error

Invariant: o-lin-req-3
Description: "The therapyLineNumber extension is required and must be provided."
Expression: "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number').exists()"
Severity: #error

Invariant: o-lin-req-4
Description: "The therapyLineIntent extension is required and must be provided."
Expression: "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent').exists()"
Severity: #error

//================
// Extensions
//================

Extension: TherapyLineNumber
Id: onconova-ext-therapy-line-number
Title: "Therapy Line Number"
Description: "The number representing the sequence of the therapy line in the overall treatment regimen."
Context: EpisodeOfCare.extension
* value[x] only positiveInt

Extension: TherapyLineIntent
Id: onconova-ext-therapy-line-intent
Title: "Therapy Line Intent"
Description: "The intent of the therapy line, such as curative or palliative."
Context: EpisodeOfCare.extension
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentIntents (required)

Extension: TherapyLineProgressionFreeSurvival
Id: onconova-ext-therapy-line-progression-free-survival
Title: "Therapy Line Progression-Free Survival"
Description: "The progression-free survival duration for the therapy line."
Context: EpisodeOfCare.extension
* value[x] only Duration

Extension: TherapyLineProgressionDate 
Id: onconova-ext-therapy-line-progression-date
Title: "Therapy Line Progression Date"
Description: "The date when disease progression was observed during or after the therapy line."
Context: EpisodeOfCare.extension
* value[x] only date