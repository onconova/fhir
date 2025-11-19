# Adverse Event Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Profile**

## Resource Profile: Adverse Event Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event | *Version*:0.2.0 |
| Active as of 2025-11-19 | *Computable Name*:OnconovaAdverseEvent |

 
A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken. 
The profile constrains the base FHIR`AdverseEvent`resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-adverse-event)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-adverse-event.csv), [Excel](StructureDefinition-onconova-adverse-event.xlsx), [Schematron](StructureDefinition-onconova-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-adverse-event",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event",
  "version" : "0.2.0",
  "name" : "OnconovaAdverseEvent",
  "title" : "Adverse Event Profile",
  "status" : "active",
  "date" : "2025-11-19T14:47:01+00:00",
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
  "description" : "A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken.\n\nThe profile constrains the base FHIR `AdverseEvent` resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AdverseEvent",
        "path" : "AdverseEvent",
        "constraint" : [
          {
            "key" : "ae-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-2",
            "severity" : "error",
            "human" : "The date element is required and must be provided.",
            "expression" : "date.exists() and date.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-3",
            "severity" : "error",
            "human" : "The event element is required and must be provided.",
            "expression" : "event.exists() and event.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-4",
            "severity" : "error",
            "human" : "The CTC Grade extension is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-5",
            "severity" : "error",
            "human" : "The outcome is required and must be provided.",
            "expression" : "outcome.exists() and outcome.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-6",
            "severity" : "error",
            "human" : "If suspectedEntity is provided, then at least one instance must exist.",
            "expression" : "suspectEntity.exists() implies (suspectEntity.count() > 0 and suspectEntity.instance.exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          },
          {
            "key" : "ae-req-7",
            "severity" : "error",
            "human" : "If adverseEventMitigation extension is provided, then at least one instance must exist.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation').exists() implies extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation').count() > 0",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-adverse-event|0.2.0"
          }
        ]
      },
      {
        "id" : "AdverseEvent.extension",
        "path" : "AdverseEvent.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "AdverseEvent.extension:ctcGrade",
        "path" : "AdverseEvent.extension",
        "sliceName" : "ctcGrade",
        "short" : "CTCAE Grade",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "AdverseEvent.extension:adverseEventMitigation",
        "path" : "AdverseEvent.extension",
        "sliceName" : "adverseEventMitigation",
        "short" : "Adverse Event Mitigation Action(s)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "AdverseEvent.actuality",
        "path" : "AdverseEvent.actuality",
        "patternCode" : "actual"
      },
      {
        "id" : "AdverseEvent.category",
        "path" : "AdverseEvent.category",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.event",
        "path" : "AdverseEvent.event",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-ctc-adverse-events|0.2.0"
        }
      },
      {
        "id" : "AdverseEvent.subject",
        "path" : "AdverseEvent.subject",
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
        "id" : "AdverseEvent.encounter",
        "path" : "AdverseEvent.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.detected",
        "path" : "AdverseEvent.detected",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.recordedDate",
        "path" : "AdverseEvent.recordedDate",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.resultingCondition",
        "path" : "AdverseEvent.resultingCondition",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.location",
        "path" : "AdverseEvent.location",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.seriousness",
        "path" : "AdverseEvent.seriousness",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.severity",
        "path" : "AdverseEvent.severity",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.outcome",
        "path" : "AdverseEvent.outcome",
        "mustSupport" : true
      },
      {
        "id" : "AdverseEvent.recorder",
        "path" : "AdverseEvent.recorder",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.contributor",
        "path" : "AdverseEvent.contributor",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "AdverseEvent.suspectEntity.instance",
        "path" : "AdverseEvent.suspectEntity.instance",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration|0.2.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary|0.2.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure|0.2.0"
            ]
          }
        ]
      }
    ]
  }
}

```
