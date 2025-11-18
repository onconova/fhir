Profile: OnconovaCancerPatient
Parent: CancerPatient
Id: onconova-cancer-patient
Title: "Cancer Patient Profile"
Description: """
A profile representing a cancer patient with specific extensions and constraints for the Onconova use case.  

It constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile. 
"""

* birthDate 1..1 MS

// Slicing identifier to allow for Onconova-specific pseudoidentifier
* identifier ^slicing.rules = #open 
* identifier ^slicing.discriminator[0].type = #pattern 
* identifier ^slicing.discriminator[0].path = "type"

// Add slice to contain the Onconova case logical identifier
* identifier contains onconovaIdentifier 1..* 
* identifier[onconovaIdentifier] 1..* 
* identifier[onconovaIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession Identifier"
* identifier[onconovaIdentifier].system = "Onconova" 
* identifier[onconovaIdentifier].value 1..1 MS 
* identifier[onconovaIdentifier] ^short = "Onconova Logical Pseudoidentifier"

* identifier contains clinicalIdentifier 1..* 
* identifier[clinicalIdentifier] 1..* 
* identifier[clinicalIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[clinicalIdentifier].system ^short = "Clinical center or institution assigning the identifier"
* identifier[clinicalIdentifier].value 1..1 MS
* identifier[clinicalIdentifier] ^short = "Clinical Identifier from Clinical Center"


// Only allow dateTime for deceased[x]
* deceased[x] only dateTime

// Add anonymized entry extension to name
* name.extension contains anonymizedEntry
* name.extension[anonymizedEntry].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.extension[anonymizedEntry].valueCode = #masked

// Add custom extensions for clinical data
* extension contains
    VitalStatus named vitalStatus 0..1 and 
    ConsentStatus named consentStatus 0..1 and 
    OverallSurvival named overallSurvival 0..1 and
    AgeExtension named age 0..1 and
    AgeAtDiagnosis named ageAtDiagnosis 0..1 and
    DataCompletionRate named dataCompletionRate 0..1 and
    Contributors named contributors 0..* and
    CauseOfDeath named causeOfDeath 0..1 and 
    EndOfRecords named endOfRecords 0..1

// Annotate unused elements for this profile
* insert NotUsed(telecom) // No telecom information
* insert NotUsed(address) // No address information
* insert NotUsed(contact) // No contact information
* insert NotUsed(maritalStatus) // No marital status
* insert NotUsed(communication) // No communication info
* insert NotUsed(photo) // No photo
* insert NotUsed(generalPractitioner) // No general practitioner

// Constraints
* obeys o-pat-req-1 and o-pat-req-2 and o-pat-req-3 and o-pat-req-4

//==================
// Extensions
//==================

Extension: UnknownEntry
Id: onconova-ext-unknown-entry
Title: "Unknown Entry"
Description: "Value is not collected and cannot be provided by Onconova."
* value[x] only code
* value[x] = #unknown

// Extension: OverallSurvival
// Captures the duration of time from diagnosis or treatment start that a patient is still alive
Extension: OverallSurvival
Id: onconova-ext-overall-survival
Title: "Overall Survival"
Description: "The duration of time from either the date of diagnosis or the start of treatment for a disease, such as cancer, that patients diagnosed with the disease are still alive. In a clinical trial, measuring the overall survival is one way to see how well a new treatment works."
* value[x] only Duration 

// Extension: Age
// Captures the approximate age of the patient
Extension: AgeExtension
Id: onconova-ext-age
Title: "Age"
Description: "The approximate age of the patient."
* value[x] only integer 

// Extension: EndOfRecords
// Indicates the last known record date of a patient
Extension: EndOfRecords
Id: onconova-ext-end-of-records
Title: "End of Records"
Description: "Indicates the last known record date of a patient."
* value[x] only date

// Extension: ConsentStatus
// Captures the last known consent status of the patient
Extension: ConsentStatus
Id: onconova-ext-consent-status
Title: "Consent status"
Description: "The status of whether the patient has given or revoked consent for reasearch use."
* value[x] only code 
* valueCode from ConsentStatus (required)

// Extension: VitalStatus
// Captures the last known vital status of the patient
Extension: VitalStatus
Id: onconova-ext-vital-status
Title: "Vital status"
Description: "The status of whether the patient is alive or deceased or unknown."
* value[x] only CodeableConcept 
* valueCodeableConcept from VitalStatus (required)

// Extension: AgeAtDiagnosis
// Captures the approximate age of the patient at diagnosis
Extension: AgeAtDiagnosis
Id: onconova-ext-age-at-diagnosis
Title: "Age at Diagnosis"
Description: "The approximate age of the patient at the time of diagnosis of the disease."
* value[x] only integer 

// Extension: DataCompletionRate
// Percentage of data elements completed for a patient
Extension: DataCompletionRate
Id: onconova-ext-data-completion-rate
Title: "Data Completion Rate"
Description: "The percentage of data elements categories that have been completed for a patient."
* value[x] only decimal

// Extension: Contributors
// Individuals or organizations that contributed to the patient's care
Extension: Contributors
Id: onconova-ext-contributors
Title: "Contributors"
Description: "The individuals or organizations that contributed to the patient's care."
* value[x] only Reference

// Extension: CauseOfDeath
// The cause of death for the patient, using a required value set
Extension: CauseOfDeath
Id: onconova-ext-cause-of-death
Title: "Cause of Death"
Description: "The cause of death for the patient."
* value[x] only CodeableConcept
* valueCodeableConcept from CausesOfDeath (required)


//==================
// Invariants
//==================

Invariant: o-pat-req-1 
Description: "The identifier element must contain the identifier for the Onconova logical pseudoidentifier slice."
Expression: "identifier.where(type.coding.code = 'ACSN' and system = 'Onconova').exists()"
Severity: #error

Invariant: o-pat-req-2
Description: "The identifier element must contain the identifier for the clinical center's patient identifier slice."
Expression: "identifier.where(type.coding.code = 'MR').exists(system.exists() and value.exists())"
Severity: #error

Invariant: o-pat-req-3
Description: "The gender element is required and must be provided"
Expression: "gender.exists()"
Severity: #error

Invariant: o-pat-req-4
Description: "The birthDate element is required and must be provided"
Expression: "birthDate.exists() and birthDate.hasValue()"
Severity: #error
