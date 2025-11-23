Alias: $DataAbsentReason = http://hl7.org/fhir/StructureDefinition/data-absent-reason

Profile: OnconovaCancerPatient
Parent: CancerPatient
Id: onconova-cancer-patient
Title: "Cancer Patient Profile"
Description: """
A profile representing a patient with or is receiving medical treatment for a malignant growth or tumor.

It constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) with specific extensions and constraints for the Onconova use case. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile if the `Must-Support` extensions are accounted for. 

**Conformance:**

Patient resources representing Cancer Patients in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.
"""

* gender 1..1 MS
* insert ObligationsWithUscdi(gender, #SHALL:populate, #SHOULD:persist)

* identifier ^slicing.rules = #open 
* identifier ^slicing.discriminator[0].type = #pattern 
* identifier ^slicing.discriminator[0].path = "type"

* identifier contains onconovaIdentifier 1..*  MS
* identifier[onconovaIdentifier] 1..* 
* identifier[onconovaIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN "Accession Identifier"
* identifier[onconovaIdentifier].system = "Onconova" 
* identifier[onconovaIdentifier].value 1..1 MS 
* identifier[onconovaIdentifier] ^short = "Onconova Logical Pseudoidentifier"
* insert ObligationsWithUscdi(identifier[onconovaIdentifier], #SHALL:populate, #SHOULD:persist)

* identifier contains clinicalIdentifier 1..*  MS
* identifier[clinicalIdentifier] 1..* 
* identifier[clinicalIdentifier].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[clinicalIdentifier].system ^short = "Clinical center or institution assigning the identifier"
* identifier[clinicalIdentifier].value 1..1 MS
* identifier[clinicalIdentifier] ^short = "Clinical Identifier from Clinical Center"
* insert ObligationsWithUscdi(identifier[clinicalIdentifier], #SHALL:populate, #SHOULD:persist)
    
* birthDate 1..1 MS
* birthDate ^short = "Date of birth of the patient normalized to the first day of the month"
* insert ObligationsWithUscdi(birthDate, #SHALL:populate, #SHOULD:persist)

* birthDate.extension contains CancerPatientAge named age 0..1
* insert Obligations(birthDate.extension[age], #MAY:ignore, #MAY:persist)
* birthDate.extension contains CancerPatientAgeAtDiagnosis named ageAtDiagnosis 0..1
* insert Obligations(birthDate.extension[ageAtDiagnosis], #MAY:ignore, #MAY:persist)

* deceased[x] 1..1 MS
* deceased[x] only dateTime
* deceased[x] ^short = "Date of death of the patient, if applicable"
* insert ObligationsWithUscdi(deceased[x], #SHALL:populate-if-known, #SHOULD:persist)
* deceased[x].extension contains CancerPatientVitalStatus named vitalStatus 1..1 MS
* insert Obligations(deceased[x].extension[vitalStatus], #SHALL:populate, #SHOULD:persist)
* deceased[x].extension contains CancerPatientCauseOfDeath named causeOfDeath 1..1 MS
* insert Obligations(deceased[x].extension[causeOfDeath], #SHALL:populate, #SHOULD:persist)

* name.extension contains $DataAbsentReason named anonymizedEntry 1..*
* name.extension[anonymizedEntry].valueCode = #masked

* extension contains CancerPatientConsentStatus named consentStatus 1..1 MS  
* insert Obligations(extension[consentStatus], #SHALL:populate, #SHOULD:persist)
* extension contains CancerPatientOverallSurvival named overallSurvival 0..1
* insert Obligations(extension[overallSurvival], #MAY:ignore, #MAY:persist)
* extension contains CancerPatientDataCompletionRate named dataCompletionRate 0..1
* insert Obligations(extension[dataCompletionRate], #MAY:ignore, #MAY:persist)
* extension contains CancerPatientDataContributors named contributors 0..*
* insert Obligations(extension[contributors], #MAY:ignore, #MAY:persist)
* extension contains CancerPatientEndOfRecords named endOfRecords 0..1 MS
* insert Obligations(extension[endOfRecords], #SHALL:populate-if-known, #SHOULD:persist)


* insert ObligationsWithUscdi(extension[race], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(extension[birthsex], #SHOULD:populate-if-known, #MAY:persist)
* insert ObligationsWithUscdi(extension[genderIdentity], #MAY:populate-if-known, #MAY:persist)

* obeys o-pat-req-1 and o-pat-req-2 and o-pat-req-3 and o-pat-req-4 and o-pat-req-5 and o-pat-req-6 and o-pat-req-7 and o-pat-req-8 

* insert NotUsed(name) 
* insert NotUsed(telecom) 
* insert NotUsed(address) 
* insert NotUsed(contact) 
* insert NotUsed(maritalStatus) 
* insert NotUsed(communication) 
* insert NotUsed(photo) 
* insert NotUsed(generalPractitioner)
* insert NotUsed(extension[tribalAffiliation])
* insert NotUsed(extension[sex])
* insert NotUsed(extension[sex])

//==================
// Extensions
//==================

Extension: CancerPatientAge
Id: onconova-ext-cancer-patient-age
Title: "Cancer Patient Age"
Description: "The approximate age of the patient."
Context: OnconovaCancerPatient.birthDate.extension
* value[x] only integer 

Extension: CancerPatientAgeAtDiagnosis
Id: onconova-ext-cancer-patient-age-at-diagnosis
Title: "Cancer Patient Age at Diagnosis"
Description: "The approximate age of the patient at the time of diagnosis of the disease."
Context: OnconovaCancerPatient.birthDate.extension
* value[x] only integer 

Extension: CancerPatientVitalStatus
Id: onconova-ext-cancer-patient-vital-status
Title: "Cancer Patient Vital status"
Description: "The status of whether the patient is alive or deceased or unknown."
Context: OnconovaCancerPatient.deceased[x].extension    
* value[x] only CodeableConcept 
* valueCodeableConcept from VitalStatus (required)

Extension: CancerPatientCauseOfDeath
Id: onconova-ext-cancer-patient-cause-of-death
Title: "Cancer Patient Cause of Death"
Description: "The cause of death for the patient."
Context: OnconovaCancerPatient.deceased[x].extension    
* value[x] only CodeableConcept
* valueCodeableConcept from CausesOfDeath (required)

Extension: CancerPatientOverallSurvival
Id: onconova-ext-cancer-patient-overall-survival
Title: "Cancer Patient Overall Survival"
Description: "The duration of time from either the date of diagnosis or the start of treatment for a disease, such as cancer, that patients diagnosed with the disease are still alive. In a clinical trial, measuring the overall survival is one way to see how well a new treatment works."
Context: OnconovaCancerPatient.extension
* value[x] only Duration 

Extension: CancerPatientEndOfRecords
Id: onconova-ext-cancer-patient-end-of-records
Title: "Cancer Patient End of Records"
Description: "Indicates the last known record date of a patient."
Context: OnconovaCancerPatient.extension
* value[x] only date

Extension: CancerPatientConsentStatus
Id: onconova-ext-cancer-patient-consent-status
Title: "Cancer Patient Consent status"
Description: "The status of whether the patient has given or revoked consent for research use."
Context: OnconovaCancerPatient.extension
* value[x] only code 
* valueCode from ConsentStatus (required)

Extension: CancerPatientDataCompletionRate
Id: onconova-ext-cancer-patient-data-completion-rate
Title: "Cancer Patient Data Completion Rate"
Description: "The percentage of data elements categories that have been completed for a patient."
Context: OnconovaCancerPatient.extension
* value[x] only decimal

Extension: CancerPatientDataContributors
Id: onconova-ext-cancer-patient-data-contributors
Title: "Cancer Patient Data Contributors"
Description: "The individuals or organizations that contributed to the patient's case data collection."
Context: OnconovaCancerPatient.extension
* value[x] only Reference


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

Invariant: o-pat-req-5
Description: "The vital status extension is required and must be provided."
Expression: "birthDate.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.hasValue()"
Severity: #error

Invariant: o-pat-req-6
Description: "The vital status extension is required and must be provided."
Expression: "deceased.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.hasValue()"
Severity: #error

Invariant: o-pat-req-7
Description: "If the patient is deceased, the date of death and cause of death must be provided."
Expression: "deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.coding.code = '419099009' implies (deceasedDateTime.hasValue() and deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-cause-of-death').valueCodeableConcept.hasValue())"
Severity: #error

Invariant: o-pat-req-8
Description: "If the patient vital status is unknown, the end of records must be provided."
Expression: "deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.coding.code = '261665006' implies extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records').valueDate.hasValue()"
Severity: #error