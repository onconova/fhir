Profile: OnconovaPrimaryCancerCondition
Id: onconova-primary-cancer-condition
Title: "Primary Cancer Condition Profile"
Parent: PrimaryCancerCondition
Description: """
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

It constrains the mCODE [PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.

This profile can be used to represent the Onconova neoplastic entities of relationship `primary`, `local_recurrence`, and `regional_recurrence`. Local and regional recurrences are indicated using extensions to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional). For example, a local recurrence would be represented as a PrimaryCancerCondition with:
```
{
    clinicalStatus: {
        coding: [
            {
                system: "http://snomed.info/sct",
                code: "recurrence",
                display: "Recurrence"
            }
        ],
    },
    _clinicalStatus {
        extension: [
            {
                url: "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type",
                valueCodeableConcept: {
                    coding: [
                        {
                            system: "http://snomed.info/sct",
                            code: "255470001",
                            display: "Local (qualifier value)"
                        }
                    ]
                }
            }
        ]
    },
}
```
"""

* subject only Reference(OnconovaCancerPatient)
* code = $SNOMED#363346000 "Malignant neoplastic disease"

// Constratin the cancer morphology extension to use ICD-O-3 codes and be required
* extension[histologyMorphologyBehavior] 1..1
* extension[histologyMorphologyBehavior].valueCodeableConcept from ICDO3MorphologyBehavior (required)

// Add differentiation as an extension
* extension contains Differentiation named differentiation 0..1 

// Constratin the cancer topography to use ICD-O-3 codes and be required 
* bodySite 1..*
* bodySite from ICDO3Topography (required)

// Add extension to indicate whether the condition is a recurrence of a previous condition
* extension contains RecurrenceOf named recurrenceOf 0..1 
* clinicalStatus.extension contains RecurrenceType named recurrenceType 0..1


// Annotate unused elements to indicate they are not supported in this profile
* insert NotUsed(stage)
* insert NotUsed(evidence)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(verificationStatus)
* insert NotUsed(recordedDate)
* insert NotUsed(encounter)
* insert NotUsed(severity)

// Constraints 
* obeys o-con-1 and 
    o-con-2 and
    o-con-req-1 and
    o-con-req-2 and
    o-con-req-3 and 
    o-con-req-4




Profile: OnconovaSecondaryCancerCondition
Parent: SecondaryCancerCondition
Id: onconova-secondary-cancer-condition
Title: "Secondary Cancer Condition Profile"
Description: """
A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

It constrains the mCODE [SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.
"""
* subject only Reference(OnconovaCancerPatient)
* code = $SNOMED#128462008 "Secondary malignant neoplastic disease"
* extension[relatedPrimaryCancerCondition].valueReference only Reference(OnconovaPrimaryCancerCondition) 

// Constratin the cancer morphology extension to use ICD-O-3 codes and be required
* extension[histologyMorphologyBehavior] 1..1
* extension[histologyMorphologyBehavior].valueCodeableConcept from ICDO3MorphologyBehavior (required)

// Add differentiation as an extension
* extension contains Differentiation named differentiation 0..1 

// Constratin the cancer topography to use ICD-O-3 codes and be required 
* bodySite 1..*
* bodySite from ICDO3Topography (required)

// Annotate unused elements to indicate they are not supported in this profile
* insert NotUsed(stage)
* insert NotUsed(evidence)
* insert NotUsed(recorder)
* insert NotUsed(asserter)
* insert NotUsed(verificationStatus)
* insert NotUsed(recordedDate)
* insert NotUsed(encounter)
* insert NotUsed(severity)

// Constraints 
* obeys o-con-req-1 and
    o-con-req-2 and
    o-con-req-3 and 
    o-con-req-4

// ================ 
// Extensions
// ================


Extension: Differentiation
Id: onconova-ext-differentiation
Title: "Recurrence Type"
Description: "THe histological differentiation of the tumor."
* value[x] only CodeableConcept
* valueCodeableConcept from ICDO3Differentiation (required)


Extension: RecurrenceOf
Id: onconova-ext-recurrence-of
Title: "Recurrence Of"
Description: "Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition."
* value[x] only Reference(PrimaryCancerCondition)

Extension: RecurrenceType
Id: onconova-ext-recurrence-type
Title: "Recurrence Type"
Description: "Indicates the type of recurrence for the condition (local or regional)."
* value[x] only CodeableConcept
* valueCodeableConcept from RecurrenceTypeVS (required)


// ================ 
// Invariants
// ================

Invariant: o-con-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-con-req-2
Description: "The assertedDate extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate').exists()"
Severity: #error

Invariant: o-con-req-3
Description: "The bodySite element is required and must be provided."
Expression: "bodySite.exists() and bodySite.coding.exists()"
Severity: #error

Invariant: o-con-req-4
Description: "The histologyMorphologyBehavior extension is required and must be provided."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior').exists()"
Severity: #error

Invariant: o-con-1
Description: "If clinicalStatus is 'recurrence', the recurrenceOf extension must be provided."
Expression: "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-of').exists()"
Severity: #error

Invariant: o-con-2
Description: "If clinicalStatus is 'recurrence', the type of recurrence must be provided."
Expression: "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies clinicalStatus.extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type').exists()"
Severity: #error

