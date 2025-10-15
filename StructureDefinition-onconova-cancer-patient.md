# Cancer Patient Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Patient Profile**

## Resource Profile: Cancer Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaCancerPatient |

 
A profile representing a cancer patient with specific extensions and constraints for the Onconova use case. Due to the research-scope of Onconova, the patient information is anonymized and identifying data elements are not provided. 
It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile. 

**Usages:**

* Refer to this Profile: [Karnofsky Performance Status Profile](StructureDefinition-onconova-Karnofsky-performance-status.md), [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md), [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md), [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)...Show 29 more,[Cancer Stage](StructureDefinition-onconova-cancer-stage.md),[Comorbidities Profile](StructureDefinition-onconova-comorbidities.md),[ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md),[Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md),[Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md),[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md),[Lifestyle Profile](StructureDefinition-onconova-lifestyle.md),[Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md),[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md),[Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md),[Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md),[Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md),[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md),[Serum Tumor Marker Level Category](StructureDefinition-onconova-serous-tumor-marker-level-category.md),[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md),[Therapy Line Profile](StructureDefinition-onconova-therapy-line.md),[TNM Distant Metastases Category](StructureDefinition-onconova-tnm-distant-metastases-category.md),[TNM Grade Category](StructureDefinition-onconova-tnm-grade-category.md),[TNM Lymphatic Invasion Category](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md),[TNM Perineural Invasion Category](StructureDefinition-onconova-tnm-perineural-invasion-category.md),[TNM Primary Tumor Category](StructureDefinition-onconova-tnm-primary-tumor-category.md),[TNM Regional Nodes Category](StructureDefinition-onconova-tnm-regional-nodes-category.md),[TNM Residual Tumor Category](StructureDefinition-onconova-tnm-residual-tumor-category.md),[TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md),[Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md),[Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md),[Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md),[Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md)and[Venous Invasion Category](StructureDefinition-onconova-venous-invasion-category.md)
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
  "version" : "0.1.0",
  "name" : "OnconovaCancerPatient",
  "title" : "Cancer Patient Profile",
  "status" : "active",
  "date" : "2025-10-15T15:04:18+00:00",
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
  "description" : "A profile representing a cancer patient with specific extensions and constraints for the Onconova use case. Due to the research-scope of Onconova, the patient information is anonymized and identifying data elements are not provided. \n\nIt constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile. ",
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
        "path" : "Patient"
      },
      {
        "id" : "Patient.meta.security",
        "path" : "Patient.meta.security",
        "patternCoding" : {
          "code" : "PSEUDED"
        }
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-overall-survival|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-age|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-age-at-diagnosis|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-data-completion-rate|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-contributors|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cause-of-death|0.1.0"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-end-of-records|0.1.0"
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
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier",
        "path" : "Patient.identifier",
        "sliceName" : "onconovaIdentifier",
        "short" : "Onconova Pseudoidentifier",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier.type",
        "path" : "Patient.identifier.type",
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-anonymized-entry|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
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
