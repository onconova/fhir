# Molecular Tumor Board Review Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Molecular Tumor Board Review Profile**

## Resource Profile: Molecular Tumor Board Review Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:OnconovaMolecularTumorBoardReview |

 
A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the`OnconovaTumorBoardReview`profile to specify that the review is focused on molecular diagnostics and recommendations. 
**Conformance:** 
Procedure resources representing a molecular tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-molecular-tumor-board-review)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-molecular-tumor-board-review.csv), [Excel](StructureDefinition-onconova-molecular-tumor-board-review.xlsx), [Schematron](StructureDefinition-onconova-molecular-tumor-board-review.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-molecular-tumor-board-review",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review",
  "version" : "0.2.0",
  "name" : "OnconovaMolecularTumorBoardReview",
  "title" : "Molecular Tumor Board Review Profile",
  "status" : "active",
  "date" : "2025-12-04T06:46:00+00:00",
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
  "description" : "A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the `OnconovaTumorBoardReview` profile to specify that the review is focused on molecular diagnostics and recommendations.\n\n**Conformance:**\n\nProcedure resources representing a molecular tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
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
  "baseDefinition" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-board-review",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure",
        "constraint" : [
          {
            "key" : "o-tub-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review"
          },
          {
            "key" : "o-tub-req-2",
            "severity" : "error",
            "human" : "The performedDateTime element is required and must be provided.",
            "expression" : "performedDateTime.exists() and performedDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-molecular-tumor-board-review"
          }
        ]
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:therapeuticRecommendation",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Procedure.extension",
        "sliceName" : "therapeuticRecommendation",
        "short" : "Therapeutic recommendation(s)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:molecularComparison",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Procedure.extension",
        "sliceName" : "molecularComparison",
        "short" : "Molecular comparison(s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:cupCharacterization",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Procedure.extension",
        "sliceName" : "cupCharacterization",
        "short" : "CUP characterization(s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-cup-characterization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.extension:specialization",
        "path" : "Procedure.code.extension",
        "sliceName" : "specialization"
      },
      {
        "id" : "Procedure.code.extension:specialization.value[x]",
        "path" : "Procedure.code.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C20826",
              "display" : "Molecular Diagnosis"
            }
          ]
        }
      }
    ]
  }
}

```
