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

This CapabilityStatement imports the CapabilityStatement [mCODE Data Sender: Get Bundle for a Patient](http://hl7.org/fhir/us/mcode/STU4/CapabilityStatement-mcode-sender-patient-bundle.html)

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
| [Patient](#Patient1-1) | [http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient](StructureDefinition-onconova-cancer-patient.md) | y |  | y | y | y |  |  |  |  |
| [Condition](#Condition1-2) | Supported Profiles  [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)  [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md) | y |  | y | y | y |  |  |  |  |
| [Observation](#Observation1-3) | Supported Profiles  [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md)  [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)  [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)  [Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md)  [Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md)  [Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md)  [Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md)  [Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md)  [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md)  [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md)  [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md)  [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md)  [Karnofsky Performance Status Profile](StructureDefinition-onconova-karnofsky-performance-status.md)  [Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md)  [TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md)  [Lymphoma Stage](StructureDefinition-onconova-lymphoma-stage.md)  [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md)  [Observation Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)  [Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)  [Observation Body Temperature Profile](http://hl7.org/fhir/R4/bodytemp.html)  [Observation Body Mass Index Profile](http://hl7.org/fhir/R4/bmi.html)  [Observation Blood Pressure Profile](http://hl7.org/fhir/R4/bp.html) | y |  | y | y | y |  |  |  |  |
| [Procedure](#Procedure1-4) | Supported Profiles  [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md)  [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md)  [Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md)  [Molecular Tumor Board Review Profile](StructureDefinition-onconova-molecular-tumor-board-review.md) | y |  | y | y | y |  |  |  |  |
| [MedicationAdministration](#MedicationAdministration1-5) | Supported Profiles  [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md) | y |  | y | y | y |  |  |  |  |
| [AdverseEvent](#AdverseEvent1-6) | Supported Profiles  [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) | y |  | y | y | y |  |  |  |  |
| [FamilyHistory](#FamilyHistory1-7) | Supported Profiles  [Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md) | y |  | y | y | y |  |  |  |  |
| [List](#List1-8) | Supported Profiles  [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md) | y |  |  |  |  |  |  |  |  |

-------

#### Resource Conformance: supported Patient

Base System Profile

[Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md)

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
[Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)
[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

#### Resource Conformance: supported Observation

Core FHIR Resource

[Observation](http://hl7.org/fhir/R4/observation.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md)
[Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)
[Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)
[Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md)
[Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md)
[Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md)
[Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md)
[Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md)
[Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md)
[Comorbidities Profile](StructureDefinition-onconova-comorbidities.md)
[Lifestyle Profile](StructureDefinition-onconova-lifestyle.md)
[ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md)
[Karnofsky Performance Status Profile](StructureDefinition-onconova-karnofsky-performance-status.md)
[Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md)
[TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md)
[Lymphoma Stage](StructureDefinition-onconova-lymphoma-stage.md)
[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md)
[Observation Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)
[Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)
[Observation Body Temperature Profile](http://hl7.org/fhir/R4/bodytemp.html)
[Observation Body Mass Index Profile](http://hl7.org/fhir/R4/bmi.html)
[Observation Blood Pressure Profile](http://hl7.org/fhir/R4/bp.html)

#### Resource Conformance: supported Procedure

Core FHIR Resource

[Procedure](http://hl7.org/fhir/R4/procedure.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md)
[Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md)
[Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md)
[Molecular Tumor Board Review Profile](StructureDefinition-onconova-molecular-tumor-board-review.md)

#### Resource Conformance: supported MedicationAdministration

Core FHIR Resource

[MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

#### Resource Conformance: supported AdverseEvent

Core FHIR Resource

[AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)

#### Resource Conformance: supported FamilyHistory

Core FHIR Resource

[FamilyHistory](http://hl7.org/fhir/R4/familyhistory.html)

Reference Policy

`literal`

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md)

#### Resource Conformance: supported List

Core FHIR Resource

[List](http://hl7.org/fhir/R4/list.html)

Reference Policy

`literal`

Interaction summary

* Supports `read`.

Supported Profiles
[Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)



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
    "http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle"
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
          "profile" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient",
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition"
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-risk-assessment",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-mutational-burden",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-microsatellite-instability",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-loss-of-heterozygosity",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-homologous-recombination-deficiency",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-neoantigen-burden",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-aneuploid-score",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-ecog-performance-status",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-karnofsky-performance-status",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-lymphoma-stage",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-imaging-disease-status",
            "http://hl7.org/fhir/StructureDefinition/bodyheight",
            "http://hl7.org/fhir/StructureDefinition/bodyweight",
            "http://hl7.org/fhir/StructureDefinition/bodytemp",
            "http://hl7.org/fhir/StructureDefinition/bmi",
            "http://hl7.org/fhir/StructureDefinition/bp"
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review",
            "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review"
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration"
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
          "type" : "AdverseEvent",
          "supportedProfile" : [
            "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event"
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history"
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
            "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"
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
          "definition" : "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
        }
      ]
    }
  ]
}

```
