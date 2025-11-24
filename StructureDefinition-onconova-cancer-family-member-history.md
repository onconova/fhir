# Cancer Family Member History Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Family Member History Profile**

## Resource Profile: Cancer Family Member History Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:OnconovaCancerFamilyMemberHistory |

 
A profile recording of a patient's family member's history of cancer. 
This profile is based on the core FHIR`FamilyMemberHistory`resource rather than the mCODE[HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer)to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography. 
**Conformance:** 
FamilyMemberHistory resources representing a history of (primary or metastatic) cancer in a patient's family member in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-cancer-family-member-history)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-cancer-family-member-history.csv), [Excel](StructureDefinition-onconova-cancer-family-member-history.xlsx), [Schematron](StructureDefinition-onconova-cancer-family-member-history.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-cancer-family-member-history",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history",
  "version" : "0.2.0",
  "name" : "OnconovaCancerFamilyMemberHistory",
  "title" : "Cancer Family Member History Profile",
  "status" : "active",
  "date" : "2025-11-24T08:19:06+00:00",
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
  "description" : "A profile recording of a patient's family member's history of cancer.\n\nThis profile is based on the core FHIR `FamilyMemberHistory` resource rather than the mCODE  [HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer) to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography.\n\n**Conformance:**\n\nFamilyMemberHistory resources representing a history of (primary or metastatic) cancer in a patient's family member in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "FamilyMemberHistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "FamilyMemberHistory",
        "path" : "FamilyMemberHistory",
        "constraint" : [
          {
            "key" : "o-fam-req-1",
            "severity" : "error",
            "human" : "The patient element is required and must be provided.",
            "expression" : "patient.exists() and patient.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history"
          },
          {
            "key" : "o-fam-req-2",
            "severity" : "error",
            "human" : "The date element is required and must be provided.",
            "expression" : "date.exists() and date.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history"
          },
          {
            "key" : "o-fam-req-3",
            "severity" : "error",
            "human" : "The relationship element is required and must be provided.",
            "expression" : "relationship.exists() and relationship.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history"
          }
        ]
      },
      {
        "id" : "FamilyMemberHistory.patient",
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
        "path" : "FamilyMemberHistory.patient",
        "short" : "The patient whose family member is the subject of this history",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
            ]
          }
        ]
      },
      {
        "id" : "FamilyMemberHistory.date",
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
        "path" : "FamilyMemberHistory.date"
      },
      {
        "id" : "FamilyMemberHistory.name",
        "path" : "FamilyMemberHistory.name",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.relationship",
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
        "path" : "FamilyMemberHistory.relationship"
      },
      {
        "id" : "FamilyMemberHistory.sex",
        "path" : "FamilyMemberHistory.sex",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.born[x]",
        "path" : "FamilyMemberHistory.born[x]",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.age[x]",
        "path" : "FamilyMemberHistory.age[x]",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.estimatedAge",
        "path" : "FamilyMemberHistory.estimatedAge",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.deceased[x]",
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
        "path" : "FamilyMemberHistory.deceased[x]",
        "short" : "Indicates whether the family member is deceased",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "FamilyMemberHistory.reasonCode",
        "path" : "FamilyMemberHistory.reasonCode",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.reasonReference",
        "path" : "FamilyMemberHistory.reasonReference",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "FamilyMemberHistory.condition",
        "path" : "FamilyMemberHistory.condition",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "FamilyMemberHistory.condition:cancerCondition",
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
        "path" : "FamilyMemberHistory.condition",
        "sliceName" : "cancerCondition",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "FamilyMemberHistory.condition:cancerCondition.extension",
        "path" : "FamilyMemberHistory.condition.extension",
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
        "id" : "FamilyMemberHistory.condition:cancerCondition.extension:morphology",
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
        "path" : "FamilyMemberHistory.condition.extension",
        "sliceName" : "morphology",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-history-member-cancer-morphology"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "FamilyMemberHistory.condition:cancerCondition.extension:topography",
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
        "path" : "FamilyMemberHistory.condition.extension",
        "sliceName" : "topography",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-history-member-cancer-topography"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "FamilyMemberHistory.condition:cancerCondition.code",
        "path" : "FamilyMemberHistory.condition.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "363346000",
              "display" : "Malignant neoplastic disease (disorder)"
            }
          ]
        }
      },
      {
        "id" : "FamilyMemberHistory.condition:cancerCondition.onset[x]",
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
        "path" : "FamilyMemberHistory.condition.onset[x]",
        "type" : [
          {
            "code" : "Age"
          }
        ]
      }
    ]
  }
}

```
