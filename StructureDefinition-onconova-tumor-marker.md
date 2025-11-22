# Tumor Marker Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Marker Profile**

## Resource Profile: Tumor Marker Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:OnconovaTumorMarker |

 
A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. 
This profile extends the base mCODE[TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test)to include specific constraints and requirements for Onconova. 
If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level). 
**Conformance:** 
Observation resources representing a tumor marker in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-tumor-marker)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-tumor-marker.csv), [Excel](StructureDefinition-onconova-tumor-marker.xlsx), [Schematron](StructureDefinition-onconova-tumor-marker.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-tumor-marker",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker",
  "version" : "0.2.0",
  "name" : "OnconovaTumorMarker",
  "title" : "Tumor Marker Profile",
  "status" : "active",
  "date" : "2025-11-22T09:58:04+00:00",
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
  "description" : "A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. \n\nThis profile extends the base mCODE [TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test) to include specific constraints and requirements for Onconova.\n\nIf relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level).\n\n**Conformance:**\n\nObservation resources representing a tumor marker in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-tma-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker"
          },
          {
            "key" : "o-tma-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker"
          },
          {
            "key" : "o-tma-req-3",
            "severity" : "error",
            "human" : "The tumorMarkerAnalyte element is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker"
          }
        ]
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "min" : 1
      },
      {
        "id" : "Observation.extension:relatedCondition",
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
        "path" : "Observation.extension",
        "sliceName" : "relatedCondition",
        "min" : 1
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.code",
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
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation",
            "valueBoolean" : true
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
        "path" : "Observation.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-tests"
        }
      },
      {
        "id" : "Observation.code.extension",
        "path" : "Observation.code.extension",
        "min" : 1
      },
      {
        "id" : "Observation.code.extension:tumorMarkerAnalyte",
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
        "path" : "Observation.code.extension",
        "sliceName" : "tumorMarkerAnalyte",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
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
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation",
            "valueBoolean" : true
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
        "path" : "Observation.focus",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
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
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation",
            "valueBoolean" : true
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
              },
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
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
