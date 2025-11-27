Profile: OnconovaMedicationAdministration
Parent: CancerRelatedMedicationAdministration
Id: onconova-medication-administration
Title: "Medication Administration Profile"
Description: """
A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. 

This profile extends the base mCODE [CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration) to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies.

Since Onocnova treats systemic therapies involving multiple antineoplastic agents administered together or in sequence as part of a single treatment plan, this profile allows for capturing such relationships between medication administrations using the `MedicationAdministration.extension[combinedWith]` extension slices.

**Conformance:**

MedicationAdministration resources representing a systemic therapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""    

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* reasonReference 1..* MS
* reasonReference ^short = "The condition(s) that motivated the medication administration"
* reasonReference only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* insert Obligations(reasonReference, #SHALL:populate, #SHOULD:persist)

* statusReason 1..1 MS
* statusReason from TreatmentTerminationReasons (required)
* insert Obligations(statusReason, #SHOULD:populate-if-known, #SHOULD:persist)

* medication[x] only CodeableConcept
* medication[x] 1..1 MS
* medicationCodeableConcept from AntineoplasticAgents (required)
* insert Obligations(medicationCodeableConcept, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only Period
* insert Obligations(effective[x], #SHALL:populate, #SHOULD:persist)

* extension contains MedicationAdministrationCombinedWith named combinedWith 0..*
* extension[combinedWith] ^short = "Other medication administered in combination"
* insert Obligations(extension[combinedWith], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains MedicationAdministrationCycles named cycles 0..1
* extension[cycles] ^short = "Total number of cycles for this medication"
* insert Obligations(extension[cycles], #SHALL:populate, #SHOULD:persist)

* extension contains TherapyLineReference named therapyLine 0..1 
* extension[therapyLine] ^short = "Reference to the therapy line associated with this treatment"
* insert Obligations(extension[therapyLine], #MAY:ignore, #MAY:persist)

* extension contains MedicationAdministrationAdjunctiveRole named adjunctiveRole 0..1 
* extension[adjunctiveRole] ^short = "Role of this medication in the overall treatment plan"
* insert Obligations(extension[adjunctiveRole], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains MedicationAdministrationIsPrimaryTherapy named isPrimaryTherapy 0..1 
* extension[isPrimaryTherapy] ^short = "Indicates if this medication is the primary therapy within a therapy line"
* insert Obligations(extension[isPrimaryTherapy], #SHALL:populate, #SHOULD:persist)

* extension[treatmentIntent] 1..1 MS
* extension[treatmentIntent].valueCodeableConcept from TreatmentIntents (required)
* insert Obligations(extension[treatmentIntent], #SHALL:populate, #SHOULD:persist)

* dosage 0..1 MS
* insert Obligations(extension[treatmentIntent], #SHOULD:populate-if-known, #SHOULD:persist)

// Annotate unused elements
* insert NotUsed(status)
* insert NotUsed(reasonCode)
* insert NotUsed(context)
* insert NotUsed(supportingInformation)
* insert NotUsed(performer)
* insert NotUsed(request)
* insert NotUsed(partOf)
* insert NotUsed(reasonCode)
* insert NotUsed(extension[normalizationBasis])

* obeys o-med-req-1 and o-med-req-2 and o-med-req-3 and o-med-req-4

Invariant: o-med-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-med-req-2
Description: "The effectivePeriod element is required and must be provided."
Expression: "effectivePeriod.exists()"
Severity: #error

Invariant: o-med-req-3
Description: "The treatmentIntent extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent').exists()"
Severity: #error

Invariant: o-med-req-4
Description: "The medicationCodeableConcept element is required and must be provided."
Expression: "medicationCodeableConcept.exists() and medicationCodeableConcept.coding.exists()"
Severity: #error


//================
// Extension
//================

Extension: MedicationAdministrationCombinedWith
Id: onconova-ext-medication-administration-combined-with
Title: "Medication Administration Combined With"
Description: "Indicates which medication administrations were given in combination with the current medication administration."
Context: MedicationAdministration.extension
* value[x] only Reference(OnconovaMedicationAdministration)

Extension: MedicationAdministrationCycles
Id: onconova-ext-medication-administration-cycles
Title: "Medication Administration Cycles"
Description: "Indicates the total number of cycles for this medication administration."
Context: MedicationAdministration.extension
* value[x] only integer

Extension: MedicationAdministrationAdjunctiveRole
Id: onconova-ext-medication-administration-adjunctive-role
Title: "Medication Administration Adjunctive Role"
Description: "Indicates the role of this medication administration in the context of the overall treatment plan."
Context: OnconovaMedicationAdministration.extension
* value[x] only CodeableConcept
* valueCodeableConcept from AdjunctiveTherapyRoles (required)

Extension: MedicationAdministrationIsPrimaryTherapy
Id: onconova-ext-medication-administration-is-primary-therapy
Title: "Medication Administration Is Primary Therapy"
Description: "Indicates whether this medication administration is the primary therapy within a therapy line."
Context: OnconovaMedicationAdministration.extension
* value[x] only boolean

