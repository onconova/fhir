# TNM Stage Group - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Stage Group**

## Resource Profile: TNM Stage Group 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:OnconovaTNMStageGroup |

 
A profile representing the TNM stage group for a cancer patient. 
It extends the base mCODE[TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group)to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a cancer TNM staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)
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
  "date" : "2025-11-24T08:55:00+00:00",
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
  "description" : "A profile representing the TNM stage group for a cancer patient. \n\nIt extends the base mCODE [TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group) to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a cancer TNM staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group",
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
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group"
          },
          {
            "key" : "o-stg-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group"
          },
          {
            "key" : "o-stg-req-3",
            "severity" : "error",
            "human" : "The valueCodeableConcept element is required and must be provided.",
            "expression" : "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-stage-group"
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.subject",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
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
        "path" : "Observation.subject",
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
        "id" : "Observation.focus",
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
        "path" : "Observation.focus",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.effective[x]",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
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
        "path" : "Observation.effective[x]",
        "min" : 1,
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
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.value[x]",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
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
        "path" : "Observation.value[x]",
        "min" : 1
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.method",
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
        "path" : "Observation.method"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.hasMember",
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
        "path" : "Observation.hasMember",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-primary-tumor-category",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-distant-metastases-category",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-regional-nodes-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-lymphatic-invasion-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-perineural-invasion-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-serum-tumor-marker-level-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-grade-category"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-venous-invasion-category"
            ]
          }
        ]
      }
    ]
  }
}

```
