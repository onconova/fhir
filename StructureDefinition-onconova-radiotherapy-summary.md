# Radiotherapy Summary Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiotherapy Summary Profile**

## Resource Profile: Radiotherapy Summary Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaRadiotherapySummary |

 
A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element. 
This profile extends the base mCODE[RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary)to include specific constraints and requirements for Onconova. 

**Usages:**

* Refer to this Profile: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) and [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-radiotherapy-summary)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-radiotherapy-summary.csv), [Excel](StructureDefinition-onconova-radiotherapy-summary.xlsx), [Schematron](StructureDefinition-onconova-radiotherapy-summary.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-radiotherapy-summary",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-radiotherapy-summary",
  "version" : "0.1.0",
  "name" : "OnconovaRadiotherapySummary",
  "title" : "Radiotherapy Summary Profile",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
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
  "description" : "A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element.\n\nThis profile extends the base mCODE [RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary) to include specific constraints and requirements for Onconova.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension:therapyLine",
        "path" : "Procedure.extension",
        "sliceName" : "therapyLine",
        "short" : "Reference to the therapy line associated with this treatment",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/ext-therapy-line-reference|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.statusReason",
        "path" : "Procedure.statusReason",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-termination-reasons|0.1.0"
        }
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.1.0"
            ]
          }
        ]
      }
    ]
  }
}

```
