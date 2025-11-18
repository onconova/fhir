# Cancer Patient Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Patient Profile**

## Resource Profile: Cancer Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient | *Version*:0.2.0 |
| Active as of 2025-11-18 | *Computable Name*:OnconovaCancerPatient |

 
A profile representing a cancer patient with specific extensions and constraints for the Onconova use case. 
It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile. 

**Usages:**

* Refer to this Profile: [Karnofsky Performance Status Profile](StructureDefinition-onconova-Karnofsky-performance-status.md), [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md), [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md), [Cancer Family Member History](StructureDefinition-onconova-cancer-family-member-history.md)...Show 30 more,[Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md),[Cancer Stage](StructureDefinition-onconova-cancer-stage.md),[Comorbidities Profile](StructureDefinition-onconova-comorbidities.md),[ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md),[Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md),[Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md),[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md),[Lifestyle Profile](StructureDefinition-onconova-lifestyle.md),[Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md),[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md),[Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md),[Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md),[Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md),[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md),[Serum Tumor Marker Level Category](StructureDefinition-onconova-serous-tumor-marker-level-category.md),[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md),[Therapy Line Profile](StructureDefinition-onconova-therapy-line.md),[TNM Distant Metastases Category](StructureDefinition-onconova-tnm-distant-metastases-category.md),[TNM Grade Category](StructureDefinition-onconova-tnm-grade-category.md),[TNM Lymphatic Invasion Category](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md),[TNM Perineural Invasion Category](StructureDefinition-onconova-tnm-perineural-invasion-category.md),[TNM Primary Tumor Category](StructureDefinition-onconova-tnm-primary-tumor-category.md),[TNM Regional Nodes Category](StructureDefinition-onconova-tnm-regional-nodes-category.md),[TNM Residual Tumor Category](StructureDefinition-onconova-tnm-residual-tumor-category.md),[TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md),[Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md),[Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md),[Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md),[Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md)and[Venous Invasion Category](StructureDefinition-onconova-venous-invasion-category.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-cancer-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-cancer-patient.csv), [Excel](StructureDefinition-onconova-cancer-patient.xlsx), [Schematron](StructureDefinition-onconova-cancer-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-cancer-patient",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient",
  "version" : "0.2.0",
  "name" : "OnconovaCancerPatient",
  "title" : "Cancer Patient Profile",
  "status" : "active",
  "date" : "2025-11-18T09:06:42+00:00",
  "publisher" : "Onconova",
  "contact" : [
    {
      "name" : "Onconova",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://onconova.github.io/docs"
        }
      ]
    }
  ],
  "description" : "A profile representing a cancer patient with specific extensions and constraints for the Onconova use case.  \n\nIt constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "o-pat-req-1",
            "severity" : "error",
            "human" : "The identifier element must contain the identifier for the Onconova logical pseudoidentifier slice.",
            "expression" : "identifier.where(type.coding.code = 'ACSN' and system = 'Onconova').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
          },
          {
            "key" : "o-pat-req-2",
            "severity" : "error",
            "human" : "The identifier element must contain the identifier for the clinical center's patient identifier slice.",
            "expression" : "identifier.where(type.coding.code = 'MR').exists(system.exists() and value.exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
          },
          {
            "key" : "o-pat-req-3",
            "severity" : "error",
            "human" : "The gender element is required and must be provided",
            "expression" : "gender.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
          },
          {
            "key" : "o-pat-req-4",
            "severity" : "error",
            "human" : "The birthDate element is required and must be provided",
            "expression" : "birthDate.exists() and birthDate.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
          }
        ]
      },
      {
        "id" : "Patient.extension:vitalStatus",
        "path" : "Patient.extension",
        "sliceName" : "vitalStatus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-vital-status|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:consentStatus",
        "path" : "Patient.extension",
        "sliceName" : "consentStatus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-consent-status|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:overallSurvival",
        "path" : "Patient.extension",
        "sliceName" : "overallSurvival",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-overall-survival|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:age",
        "path" : "Patient.extension",
        "sliceName" : "age",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-age|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:ageAtDiagnosis",
        "path" : "Patient.extension",
        "sliceName" : "ageAtDiagnosis",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-age-at-diagnosis|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:dataCompletionRate",
        "path" : "Patient.extension",
        "sliceName" : "dataCompletionRate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-data-completion-rate|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:contributors",
        "path" : "Patient.extension",
        "sliceName" : "contributors",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-contributors|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:causeOfDeath",
        "path" : "Patient.extension",
        "sliceName" : "causeOfDeath",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cause-of-death|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:endOfRecords",
        "path" : "Patient.extension",
        "sliceName" : "endOfRecords",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-end-of-records|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier",
        "path" : "Patient.identifier",
        "sliceName" : "onconovaIdentifier",
        "short" : "Onconova Logical Pseudoidentifier",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "ACSN",
              "display" : "Accession Identifier"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "Onconova"
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier",
        "path" : "Patient.identifier",
        "sliceName" : "clinicalIdentifier",
        "short" : "Clinical Identifier from Clinical Center",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "MR",
              "display" : "Medical Record Number"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier.system",
        "path" : "Patient.identifier.system",
        "short" : "Clinical center or institution assigning the identifier"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.name.extension",
        "path" : "Patient.name.extension",
        "min" : 1
      },
      {
        "id" : "Patient.name.extension:anonymizedEntry",
        "path" : "Patient.name.extension",
        "sliceName" : "anonymizedEntry",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/data-absent-reason|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.name.extension:anonymizedEntry.value[x]",
        "path" : "Patient.name.extension.value[x]",
        "patternCode" : "masked"
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.photo",
        "path" : "Patient.photo",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
