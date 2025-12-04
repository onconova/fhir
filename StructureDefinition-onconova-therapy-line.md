# Therapy Line Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Profile**

## Resource Profile: Therapy Line Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:OnconovaTherapyLine |

 
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. It is based on a FHIR`EpisodeOfCare`to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing`Procedure`and`MedicationAdministration`resources and are not usually created manually. 
**Conformance:** 
EpisodeOfCare resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* Refer to this Profile: [Therapy Line Reference](StructureDefinition-onconova-ext-therapy-line-reference.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

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
  "date" : "2025-12-04T10:59:28+00:00",
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
  "description" : "A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. \nIt is based on a FHIR `EpisodeOfCare` to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing `Procedure` and `MedicationAdministration` resources and are not usually created manually.\n\n**Conformance:**\n\nEpisodeOfCare resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "EpisodeOfCare",
        "path" : "EpisodeOfCare",
        "constraint" : [
          {
            "key" : "o-lin-req-1",
            "severity" : "error",
            "human" : "The patient element is required and must be provided.",
            "expression" : "patient.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"
          },
          {
            "key" : "o-lin-req-2",
            "severity" : "error",
            "human" : "The period element is required and must be provided.",
            "expression" : "period.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"
          },
          {
            "key" : "o-lin-req-3",
            "severity" : "error",
            "human" : "The therapyLineNumber extension is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"
          },
          {
            "key" : "o-lin-req-4",
            "severity" : "error",
            "human" : "The therapyLineIntent extension is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line"
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.extension",
        "path" : "EpisodeOfCare.extension",
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
        "id" : "EpisodeOfCare.extension:therapyLineNumber",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
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
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "therapyLineNumber",
        "short" : "The number representing the sequence of the therapy line in the overall treatment regimen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.extension:therapyLineIntent",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
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
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "therapyLineIntent",
        "short" : "The intent of the therapy line, such as curative or palliative",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.extension:therapyLineProgressionFreeSurvival",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "therapyLineProgressionFreeSurvival",
        "short" : "The progression-free survival duration for the therapy line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-free-survival"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.extension:therapyLineProgressionDate",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
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
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "therapyLineProgressionDate",
        "short" : "The date when disease progression was observed during or after the therapy line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-date"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.status",
        "path" : "EpisodeOfCare.status",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.statusHistory",
        "path" : "EpisodeOfCare.statusHistory",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.type",
        "path" : "EpisodeOfCare.type",
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
        "id" : "EpisodeOfCare.diagnosis",
        "path" : "EpisodeOfCare.diagnosis",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.patient",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
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
        "path" : "EpisodeOfCare.patient",
        "short" : "The patient receiving the therapy",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "EpisodeOfCare.managingOrganization",
        "path" : "EpisodeOfCare.managingOrganization",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.period",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "EpisodeOfCare.period",
        "short" : "The period during which the therapy line was performed",
        "mustSupport" : true
      },
      {
        "id" : "EpisodeOfCare.referralRequest",
        "path" : "EpisodeOfCare.referralRequest",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.careManager",
        "path" : "EpisodeOfCare.careManager",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.team",
        "path" : "EpisodeOfCare.team",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "EpisodeOfCare.account",
        "path" : "EpisodeOfCare.account",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
