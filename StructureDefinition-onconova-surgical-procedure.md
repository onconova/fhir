# Surgical Procedure Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Surgical Procedure Profile**

## Resource Profile: Surgical Procedure Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaSurgicalProcedure |

 
A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. 
It extends the base mCODE[CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure)to include specific constraints and requirements for Onconova. 

**Usages:**

* Refer to this Profile: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) and [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-surgical-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-surgical-procedure.csv), [Excel](StructureDefinition-onconova-surgical-procedure.xlsx), [Schematron](StructureDefinition-onconova-surgical-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-surgical-procedure",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure",
  "version" : "0.1.0",
  "name" : "OnconovaSurgicalProcedure",
  "title" : "Surgical Procedure Profile",
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
  "description" : "A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. \n\nIt extends the base mCODE [CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure) to include specific constraints and requirements for Onconova.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure|4.0.0",
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
        "id" : "Procedure.basedOn",
        "path" : "Procedure.basedOn",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.partOf",
        "path" : "Procedure.partOf",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "patternCode" : "completed"
      },
      {
        "id" : "Procedure.statusReason",
        "path" : "Procedure.statusReason",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
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
      },
      {
        "id" : "Procedure.encounter",
        "path" : "Procedure.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.recorder",
        "path" : "Procedure.recorder",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.asserter",
        "path" : "Procedure.asserter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.performer",
        "path" : "Procedure.performer",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.reasonCode",
        "path" : "Procedure.reasonCode",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.reasonReference",
        "path" : "Procedure.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.1.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.report",
        "path" : "Procedure.report",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.complication",
        "path" : "Procedure.complication",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.complicationDetail",
        "path" : "Procedure.complicationDetail",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.followUp",
        "path" : "Procedure.followUp",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.focalDevice",
        "path" : "Procedure.focalDevice",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.usedReference",
        "path" : "Procedure.usedReference",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.usedCode",
        "path" : "Procedure.usedCode",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
