# TNM Stage Group - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Stage Group**

## Resource Profile: TNM Stage Group 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group | *Version*:0.2.0 |
| Active as of 2025-11-19 | *Computable Name*:OnconovaTNMStageGroup |

 
A profile representing the TNM stage group for a cancer patient. 
It extends the base mCODE[TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group)to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-tnm-stage-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-tnm-stage-group.csv), [Excel](StructureDefinition-onconova-tnm-stage-group.xlsx), [Schematron](StructureDefinition-onconova-tnm-stage-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-tnm-stage-group",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group",
  "version" : "0.2.0",
  "name" : "OnconovaTNMStageGroup",
  "title" : "TNM Stage Group",
  "status" : "active",
  "date" : "2025-11-19T13:56:54+00:00",
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
  "description" : "A profile representing the TNM stage group for a cancer patient. \n\nIt extends the base mCODE [TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group) to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-stg-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group|0.2.0"
          },
          {
            "key" : "o-stg-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group|0.2.0"
          },
          {
            "key" : "o-stg-req-3",
            "severity" : "error",
            "human" : "The valueCodeableConcept element is required and must be provided.",
            "expression" : "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group|0.2.0"
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category|4.0.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:TNMCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "TNMCategory",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-primary-tumor-category|0.2.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-distant-metastases-category|0.2.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-regional-nodes-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:lymphaticInvasionCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "lymphaticInvasionCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-lymphatic-invasion-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:perineuralInvasionCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "perineuralInvasionCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-perineural-invasion-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:residualTumorCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "residualTumorCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:serumTumorMarkerLevelCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "serumTumorMarkerLevelCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-serous-tumor-marker-level-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:gradeCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "gradeCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-grade-category|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:venousInvasionCategory",
        "path" : "Observation.hasMember",
        "sliceName" : "venousInvasionCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-venous-invasion-category|0.2.0"
            ]
          }
        ]
      }
    ]
  }
}

```
