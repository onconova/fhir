# Therapy Line Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Profile**

## Resource Profile: Therapy Line Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line | *Version*:0.2.0 |
| Active as of 2025-11-07 | *Computable Name*:OnconovaTherapyLine |

 
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. 
Due to its abstract conceptual nature, it is based on a FHIR`List`to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually. 

**Usages:**

* Refer to this Profile: [Therapy Line Reference](StructureDefinition-ext-therapy-line-reference.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-therapy-line)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-therapy-line.csv), [Excel](StructureDefinition-onconova-therapy-line.xlsx), [Schematron](StructureDefinition-onconova-therapy-line.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-therapy-line",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line",
  "version" : "0.2.0",
  "name" : "OnconovaTherapyLine",
  "title" : "Therapy Line Profile",
  "status" : "active",
  "date" : "2025-11-07T05:59:36+00:00",
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
  "description" : "A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. \n\nDue to its abstract conceptual nature, it is based on a FHIR `List` to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List",
        "path" : "List",
        "constraint" : [
          {
            "key" : "o-lin-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line|0.2.0"
          },
          {
            "key" : "o-lin-req-2",
            "severity" : "error",
            "human" : "The therapyLineNumber extension is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line|0.2.0"
          },
          {
            "key" : "o-lin-req-3",
            "severity" : "error",
            "human" : "The therapyLineIntent extension is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line|0.2.0"
          }
        ]
      },
      {
        "id" : "List.extension",
        "path" : "List.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "List.extension:therapyLinePeriod",
        "path" : "List.extension",
        "sliceName" : "therapyLinePeriod",
        "short" : "The period during which the therapy line was performed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-period|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "List.extension:therapyLineNumber",
        "path" : "List.extension",
        "sliceName" : "therapyLineNumber",
        "short" : "The number representing the sequence of the therapy line in the overall treatment regimen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "List.extension:therapyLineIntent",
        "path" : "List.extension",
        "sliceName" : "therapyLineIntent",
        "short" : "The intent of the therapy line, such as curative or palliative",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "List.extension:therapyLineProgressionFreeSurvival",
        "path" : "List.extension",
        "sliceName" : "therapyLineProgressionFreeSurvival",
        "short" : "The progression-free survival duration for the therapy line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-free-survival|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "List.extension:therapyLineProgressionDate",
        "path" : "List.extension",
        "sliceName" : "therapyLineProgressionDate",
        "short" : "The date when disease progression was observed during or after the therapy line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-date|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "List.status",
        "path" : "List.status",
        "patternCode" : "current"
      },
      {
        "id" : "List.mode",
        "path" : "List.mode",
        "patternCode" : "working"
      },
      {
        "id" : "List.code",
        "path" : "List.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C133518",
              "display" : "Line of Therapy"
            }
          ]
        }
      },
      {
        "id" : "List.subject",
        "path" : "List.subject",
        "short" : "The patient receiving the therapy",
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
        "id" : "List.encounter",
        "path" : "List.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "List.date",
        "path" : "List.date",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "List.source",
        "path" : "List.source",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "List.entry",
        "path" : "List.entry",
        "short" : "The therapies or procedures that are part of this therapy line",
        "mustSupport" : true
      },
      {
        "id" : "List.entry.item",
        "path" : "List.entry.item",
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
