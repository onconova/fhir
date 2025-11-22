# Onconova FHIR REST Server Capability Statement - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Onconova FHIR REST Server Capability Statement**

## CapabilityStatement: Onconova FHIR REST Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/CapabilityStatement/onconova-capability-statement | *Version*:0.2.0 |
| Draft as of 2025-09-25 | *Computable Name*:OnconovaCapabilityStatement |

 
Supports the retrieval of the[mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle)containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide. 

 [Raw OpenAPI-Swagger Definition file](onconova-capability-statement.openapi.json) | [Download](onconova-capability-statement.openapi.json) 

## Onconova FHIR REST Server Capability Statement

* Implementation Guide Version: 0.2.0 
* FHIR Version: 4.0.1 
* Supported Formats: `json`, `application/fhir+json`
* Published on: 2025-09-25 
* Published by: Onconova 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

This CapabilityStatement imports the CapabilityStatement [mCODE Data Sender: Get Bundle for a Patientversion: 4.0.0)](http://hl7.org/fhir/us/mcode/STU4/CapabilityStatement-mcode-sender-patient-bundle.html)

### SHALL Support the Following Implementation Guides

* [http://onconova.github.io/fhir/ImplementationGuide/onconova.fhir](index.md)

## FHIR RESTful Capabilities

### Mode: server

As an mCODE-compliant server, the Onconova FHIR server **SHALL**:

1. Support all profiles defined in this Implementation Guide.
1. Implement the RESTful behavior according to the FHIR specification.
1. Return the following response classes:
* (Status 400): Invalid parameter or data
* (Status 401): Unauthorized request
* (Status 403): Insufficient permissions
* (Status 404): Unknown resource
* (Status 405): HTTP method not allowed/supported
* (Status 410): Deleted resource
* (Status 500): Internal server error

1. Support JSON source formats for all Onconova interactions.
1. Identify the Onconova profiles supported as part of the FHIR`meta.profile`attribute for each instance.
1. Support the searchParameters on each profile individually and in combination.

The Onconova FHIR server **MAY**:

1. Support XML source formats for its interactions.

**Security**

> 

1. See the[General Security Considerations](https://www.hl7.org/fhir/security.html#general)section for requirements and recommendations.
1. A server**SHALL**reject any unauthorized requests by returning an`HTTP 401`unauthorized response code.
1. A server**SHALL**reject any requests with insufficient permissions by returning an`HTTP 403`forbidden response code.


Summary of System-wide Operations


### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | [http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0](StructureDefinition-onconova-cancer-patient.md) | y |  | y | y | y |  |  |  |  |
| [Condition](#Condition1-2) | Supported Profiles  [Primary Cancer Condition Profileversion: 0.2.0)](StructureDefinition-onconova-primary-cancer-condition.md)  [Secondary Cancer Condition Profileversion: 0.2.0)](StructureDefinition-onconova-secondary-cancer-condition.md) | y |  | y | y | y |  |  |  |  |
| [Observation](#Observation1-3) | Supported Profiles  [Tumor Marker Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-marker.md)  [Cancer Risk Assessment Profileversion: 0.2.0)](StructureDefinition-onconova-cancer-risk-assessment.md)  [Genomic Variant Profileversion: 0.2.0)](StructureDefinition-onconova-genomic-variant.md)  [Tumor Mutational Burden Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-mutational-burden.md)  [Microsatellite Instability Profileversion: 0.2.0)](StructureDefinition-onconova-microsatellite-instability.md)  [Loss of Heterozygosity Profileversion: 0.2.0)](StructureDefinition-onconova-loss-of-heterozygosity.md)  [Homologous Recombination Deficiency Profileversion: 0.2.0)](StructureDefinition-onconova-homologous-recombination-deficiency.md)  [Tumor Neoantigen Burden Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-neoantigen-burden.md)  [Aneuploid Score Profileversion: 0.2.0)](StructureDefinition-onconova-aneuploid-score.md)  [Cancer Stageversion: 0.2.0)](StructureDefinition-onconova-cancer-stage.md)  [TNM Stage Groupversion: 0.2.0)](StructureDefinition-onconova-tnm-stage-group.md)  [Comorbidities Profileversion: 0.2.0)](StructureDefinition-onconova-comorbidities.md)  [Lifestyle Profileversion: 0.2.0)](StructureDefinition-onconova-lifestyle.md)  [Karnofsky Performance Status Profileversion: 0.2.0)](StructureDefinition-onconova-Karnofsky-performance-status.md)  [ECOG Performance Status Profileversion: 0.2.0)](StructureDefinition-onconova-ecog-performance-status.md)  [Imaging Disease Status Profileversion: 0.2.0)](StructureDefinition-onconova-imaging-disease-status.md)  [TNM Primary Tumor Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-primary-tumor-category.md)  [TNM Distant Metastases Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-distant-metastases-category.md)  [TNM Regional Nodes Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-regional-nodes-category.md)  [TNM Lymphatic Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md)  [TNM Perineural Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-perineural-invasion-category.md)  [TNM Residual Tumor Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-residual-tumor-category.md)  [TNM Grade Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-grade-category.md)  [TNM Serum Tumor Marker Level Categoryversion: 0.2.0)](StructureDefinition-onconova-serous-tumor-marker-level-category.md)  [TNM Venous Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-venous-invasion-category.md)  [Observation Body Height Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodyheight.html)  [Observation Body Weight Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodyweight.html)  [Observation Body Temperature Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodytemp.html)  [Observation Body Mass Index Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bmi.html)  [Observation Blood Pressure Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bp.html) | y |  | y | y | y |  |  |  |  |
| [Procedure](#Procedure1-4) | Supported Profiles  [Surgical Procedure Profileversion: 0.2.0)](StructureDefinition-onconova-surgical-procedure.md)  [Radiotherapy Summary Profileversion: 0.2.0)](StructureDefinition-onconova-radiotherapy-summary.md)  [Tumor Board Reviewversion: 0.2.0)](StructureDefinition-onconova-tumor-board-review.md)  [Molecular Tumor Board Reviewversion: 0.2.0)](StructureDefinition-onconova-molecular-tumor-board-review.md) | y |  | y | y | y |  |  |  |  |
| [MedicationAdministration](#MedicationAdministration1-5) | Supported Profiles  [Medication Administration Profileversion: 0.2.0)](StructureDefinition-onconova-medication-administration.md) | y |  | y | y | y |  |  |  |  |
| [FamilyHistory](#FamilyHistory1-6) | Supported Profiles  [Cancer Family Member Historyversion: 0.2.0)](StructureDefinition-onconova-cancer-family-member-history.md) | y |  | y | y | y |  |  |  |  |
| [List](#List1-7) | Supported Profiles  [Therapy Line Profileversion: 0.2.0)](StructureDefinition-onconova-therapy-line.md) | y |  |  |  |  |  |  |  |  |

-------

#### Resource Conformance: supported Patient

Base System Profile

[Cancer Patient Profileversion: 0.2.0)](StructureDefinition-onconova-cancer-patient.md)

Profile Conformance

**SHALL**

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

#### Resource Conformance: supported Condition

Core FHIR Resource

[Condition](http://hl7.org/fhir/R4/condition.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Primary Cancer Condition Profileversion: 0.2.0)](StructureDefinition-onconova-primary-cancer-condition.md)
[Secondary Cancer Condition Profileversion: 0.2.0)](StructureDefinition-onconova-secondary-cancer-condition.md)

#### Resource Conformance: supported Observation

Core FHIR Resource

[Observation](http://hl7.org/fhir/R4/observation.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Tumor Marker Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-marker.md)
[Cancer Risk Assessment Profileversion: 0.2.0)](StructureDefinition-onconova-cancer-risk-assessment.md)
[Genomic Variant Profileversion: 0.2.0)](StructureDefinition-onconova-genomic-variant.md)
[Tumor Mutational Burden Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-mutational-burden.md)
[Microsatellite Instability Profileversion: 0.2.0)](StructureDefinition-onconova-microsatellite-instability.md)
[Loss of Heterozygosity Profileversion: 0.2.0)](StructureDefinition-onconova-loss-of-heterozygosity.md)
[Homologous Recombination Deficiency Profileversion: 0.2.0)](StructureDefinition-onconova-homologous-recombination-deficiency.md)
[Tumor Neoantigen Burden Profileversion: 0.2.0)](StructureDefinition-onconova-tumor-neoantigen-burden.md)
[Aneuploid Score Profileversion: 0.2.0)](StructureDefinition-onconova-aneuploid-score.md)
[Cancer Stageversion: 0.2.0)](StructureDefinition-onconova-cancer-stage.md)
[TNM Stage Groupversion: 0.2.0)](StructureDefinition-onconova-tnm-stage-group.md)
[Comorbidities Profileversion: 0.2.0)](StructureDefinition-onconova-comorbidities.md)
[Lifestyle Profileversion: 0.2.0)](StructureDefinition-onconova-lifestyle.md)
[Karnofsky Performance Status Profileversion: 0.2.0)](StructureDefinition-onconova-Karnofsky-performance-status.md)
[ECOG Performance Status Profileversion: 0.2.0)](StructureDefinition-onconova-ecog-performance-status.md)
[Imaging Disease Status Profileversion: 0.2.0)](StructureDefinition-onconova-imaging-disease-status.md)
[TNM Primary Tumor Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-primary-tumor-category.md)
[TNM Distant Metastases Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-distant-metastases-category.md)
[TNM Regional Nodes Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-regional-nodes-category.md)
[TNM Lymphatic Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md)
[TNM Perineural Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-perineural-invasion-category.md)
[TNM Residual Tumor Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-residual-tumor-category.md)
[TNM Grade Categoryversion: 0.2.0)](StructureDefinition-onconova-tnm-grade-category.md)
[TNM Serum Tumor Marker Level Categoryversion: 0.2.0)](StructureDefinition-onconova-serous-tumor-marker-level-category.md)
[TNM Venous Invasion Categoryversion: 0.2.0)](StructureDefinition-onconova-venous-invasion-category.md)
[Observation Body Height Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodyheight.html)
[Observation Body Weight Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodyweight.html)
[Observation Body Temperature Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bodytemp.html)
[Observation Body Mass Index Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bmi.html)
[Observation Blood Pressure Profileversion: 4.0.1)](http://hl7.org/fhir/R4/bp.html)

#### Resource Conformance: supported Procedure

Core FHIR Resource

[Procedure](http://hl7.org/fhir/R4/procedure.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Surgical Procedure Profileversion: 0.2.0)](StructureDefinition-onconova-surgical-procedure.md)
[Radiotherapy Summary Profileversion: 0.2.0)](StructureDefinition-onconova-radiotherapy-summary.md)
[Tumor Board Reviewversion: 0.2.0)](StructureDefinition-onconova-tumor-board-review.md)
[Molecular Tumor Board Reviewversion: 0.2.0)](StructureDefinition-onconova-molecular-tumor-board-review.md)

#### Resource Conformance: supported MedicationAdministration

Core FHIR Resource

[MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Medication Administration Profileversion: 0.2.0)](StructureDefinition-onconova-medication-administration.md)

#### Resource Conformance: supported FamilyHistory

Core FHIR Resource

[FamilyHistory](http://hl7.org/fhir/R4/familyhistory.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Cancer Family Member Historyversion: 0.2.0)](StructureDefinition-onconova-cancer-family-member-history.md)

#### Resource Conformance: supported List

Core FHIR Resource

[List](http://hl7.org/fhir/R4/list.html)

Reference Policy

`literal`

Interaction summary

* Supports `read`.

Supported Profiles
[Therapy Line Profileversion: 0.2.0)](StructureDefinition-onconova-therapy-line.md)



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "onconova-capability-statement",
  "url" : "http://onconova.github.io/fhir/CapabilityStatement/onconova-capability-statement",
  "version" : "0.2.0",
  "name" : "OnconovaCapabilityStatement",
  "title" : "Onconova FHIR REST Server Capability Statement",
  "status" : "draft",
  "date" : "2025-09-25",
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
  "description" : "Supports the retrieval of the [mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle) containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide.",
  "kind" : "capability",
  "imports" : [
    "http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle|4.0.0"
  ],
  "software" : {
    "name" : "Onconova"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json", "application/fhir+json"],
  "implementationGuide" : [
    "http://onconova.github.io/fhir/ImplementationGuide/onconova.fhir"
  ],
  "rest" : [
    {
      "mode" : "server",
      "documentation" : "As an mCODE-compliant server, the Onconova FHIR server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide.\n2. Implement the RESTful behavior according to the FHIR specification.\n3. Return the following response classes:\n    - (Status 400): Invalid parameter or data\n    - (Status 401): Unauthorized request\n    - (Status 403): Insufficient permissions\n    - (Status 404): Unknown resource\n    - (Status 405): HTTP method not allowed/supported\n    - (Status 410): Deleted resource\n    - (Status 500): Internal server error \n4. Support JSON source formats for all Onconova interactions.\n5. Identify the Onconova profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n6. Support the searchParameters on each profile individually and in combination.\n\nThe Onconova FHIR server **MAY**:\n\n1. Support XML source formats for its interactions.",
      "security" : {
        "description" : "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code.\n2. A server **SHALL** reject any requests with insufficient permissions by returning an `HTTP 403` forbidden response code."
      },
      "resource" : [
        {
          "type" : "Patient",
          "profile" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "Condition",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.2.0"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "Observation",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-risk-assessment|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-mutational-burden|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-microsatellite-instability|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-loss-of-heterozygosity|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-homologous-recombination-deficiency|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-neoantigen-burden|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-aneuploid-score|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-Karnofsky-performance-status|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-ecog-performance-status|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-imaging-disease-status|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-primary-tumor-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-distant-metastases-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-regional-nodes-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-lymphatic-invasion-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-perineural-invasion-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-grade-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-serous-tumor-marker-level-category|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-venous-invasion-category|0.2.0",
            "http://hl7.org/fhir/StructureDefinition/bodyheight|4.0.1",
            "http://hl7.org/fhir/StructureDefinition/bodyweight|4.0.1",
            "http://hl7.org/fhir/StructureDefinition/bodytemp|4.0.1",
            "http://hl7.org/fhir/StructureDefinition/bmi|4.0.1",
            "http://hl7.org/fhir/StructureDefinition/bp|4.0.1"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "Procedure",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review|0.2.0",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review|0.2.0"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "MedicationAdministration",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration|0.2.0"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "FamilyHistory",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history|0.2.0"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ],
          "updateCreate" : false,
          "referencePolicy" : ["literal"]
        },
        {
          "type" : "List",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line|0.2.0"
          ],
          "interaction" : [
            {
              "code" : "read"
            }
          ],
          "referencePolicy" : ["literal"]
        }
      ],
      "operation" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "name" : "mcode-patient-bundle",
          "definition" : "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything|4.0.0"
        }
      ]
    }
  ]
}

```
