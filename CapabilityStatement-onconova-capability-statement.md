# Onconova FHIR REST Server Capability Statement - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Onconova FHIR REST Server Capability Statement**

## CapabilityStatement: Onconova FHIR REST Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/CapabilityStatement/onconova-capability-statement | *Version*:0.2.0 |
| Draft as of 2025-09-25 | *Computable Name*:OnconovaCapabilityStatement |

 
Supports the retrieval of the [mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle) containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide. 

 [Raw OpenAPI-Swagger Definition file](onconova-capability-statement.openapi.json) | [Download](onconova-capability-statement.openapi.json) 



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
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "Supports the retrieval of the [mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle) containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide.",
  "kind" : "capability",
  "imports" : ["http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle"],
  "software" : {
    "name" : "Onconova"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json", "application/fhir+json"],
  "implementationGuide" : ["http://onconova.github.io/fhir/ImplementationGuide/onconova.fhir"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "As an mCODE-compliant server, the Onconova FHIR server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide.\n2. Implement the RESTful behavior according to the FHIR specification.\n3. Return the following response classes:\n    - (Status 400): Invalid parameter or data\n    - (Status 401): Unauthorized request\n    - (Status 403): Insufficient permissions\n    - (Status 404): Unknown resource\n    - (Status 405): HTTP method not allowed/supported\n    - (Status 410): Deleted resource\n    - (Status 500): Internal server error \n4. Support JSON source formats for all Onconova interactions.\n5. Identify the Onconova profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n6. Support the searchParameters on each profile individually and in combination.\n\nThe Onconova FHIR server **MAY**:\n\n1. Support XML source formats for its interactions.",
    "security" : {
      "description" : "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code.\n2. A server **SHALL** reject any requests with insufficient permissions by returning an `HTTP 403` forbidden response code."
    },
    "resource" : [{
      "type" : "Patient",
      "profile" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient",
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "Condition",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition",
      "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "Observation",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker",
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
      "http://onconova.github.io/fhir/StructureDefinition/onconova-vital-signs-panel"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "Procedure",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure",
      "http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary",
      "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review",
      "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "MedicationAdministration",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "AdverseEvent",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "FamilyHistory",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    },
    {
      "type" : "EpisodeOfCare",
      "supportedProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"],
      "interaction" : [{
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
      }],
      "updateCreate" : false,
      "referencePolicy" : ["literal"]
    }],
    "operation" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "name" : "mcode-patient-bundle",
      "definition" : "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
    }]
  }]
}

```
