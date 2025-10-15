# Tumor Board Review - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Board Review**

## Resource Profile: Tumor Board Review 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaTumorBoardReview |

 
A profile representing a tumor board review for a cancer patient. 
This profile extends the base FHIR`Procedure`resource since there is no equivalent mCODE profile that covers the use case. 

**Usages:**

* Derived from this Profile: [Molecular Tumor Board Review](StructureDefinition-onconova-molecular-tumor-board-review.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-tumor-board-review)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-tumor-board-review.csv), [Excel](StructureDefinition-onconova-tumor-board-review.xlsx), [Schematron](StructureDefinition-onconova-tumor-board-review.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-tumor-board-review",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review",
  "version" : "0.1.0",
  "name" : "OnconovaTumorBoardReview",
  "title" : "Tumor Board Review",
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
  "description" : "A profile representing a tumor board review for a cancer patient.\n\nThis profile extends the base FHIR `Procedure` resource since there is no equivalent mCODE profile that covers the use case. ",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.basedOn",
        "path" : "Procedure.basedOn",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "patternCode" : "completed"
      },
      {
        "id" : "Procedure.category",
        "path" : "Procedure.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "103693007",
              "display" : "Diagnostic procedure"
            }
          ]
        }
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C93304",
              "display" : "Tumor Board Review"
            }
          ]
        }
      },
      {
        "id" : "Procedure.code.extension:specialization",
        "path" : "Procedure.code.extension",
        "sliceName" : "specialization",
        "short" : "Tumor Board Specialization, if relevant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-board-specialization|0.1.0"
            ]
          }
        ],
        "mustSupport" : true
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
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
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
        "id" : "Procedure.bodySite",
        "path" : "Procedure.bodySite",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Procedure.outcome",
        "path" : "Procedure.outcome",
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
        "short" : "Tumor Board Recommendation",
        "definition" : "Any recommendations or follow-up actions resulting from the tumor board.",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-board-recommendations|0.1.0"
        }
      }
    ]
  }
}

```
