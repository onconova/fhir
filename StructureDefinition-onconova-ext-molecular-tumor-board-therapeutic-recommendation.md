# Molecular Tumor Board Therapeutic Recommendation - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Molecular Tumor Board Therapeutic Recommendation**

## Extension: Molecular Tumor Board Therapeutic Recommendation 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:MolecularTumorBoardTherapeuticRecommendation |

A therapeutic recommendation or follow-up action resulting from a molecular tumor board review.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Molecular Tumor Board Review Profile](StructureDefinition-onconova-molecular-tumor-board-review.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.csv), [Excel](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.xlsx), [Schematron](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-molecular-tumor-board-therapeutic-recommendation",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation",
  "version" : "0.2.0",
  "name" : "MolecularTumorBoardTherapeuticRecommendation",
  "title" : "Molecular Tumor Board Therapeutic Recommendation",
  "status" : "active",
  "date" : "2025-11-24T09:24:28+00:00",
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
  "description" : "A therapeutic recommendation or follow-up action resulting from a molecular tumor board review.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Molecular Tumor Board Therapeutic Recommendation",
        "definition" : "A therapeutic recommendation or follow-up action resulting from a molecular tumor board review.",
        "constraint" : [
          {
            "key" : "tumor-board-therapeutic-recommendation-1",
            "severity" : "error",
            "human" : "Either clinical trial or medication SHALL be present",
            "expression" : "extension('clinicalTrial').exists() or extension('medication').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation"
          }
        ]
      },
      {
        "id" : "Extension.extension:clinicalTrial",
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
        "path" : "Extension.extension",
        "sliceName" : "clinicalTrial",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:clinicalTrial.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:clinicalTrial.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "clinicalTrial"
      },
      {
        "id" : "Extension.extension:clinicalTrial.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:medication",
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
        "path" : "Extension.extension",
        "sliceName" : "medication",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:medication.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:medication.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "medication"
      },
      {
        "id" : "Extension.extension:medication.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-antineoplastic-agents"
        }
      },
      {
        "id" : "Extension.extension:supportingEvidence",
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
        "path" : "Extension.extension",
        "sliceName" : "supportingEvidence",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:supportingEvidence.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:supportingEvidence.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "supportingEvidence"
      },
      {
        "id" : "Extension.extension:supportingEvidence.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-mutational-burden",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-microsatellite-instability",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-loss-of-heterozygosity",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-homologous-recombination-deficiency",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-neoantigen-burden",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-aneuploid-score"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:expectedEffect",
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
        "path" : "Extension.extension",
        "sliceName" : "expectedEffect",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:expectedEffect.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:expectedEffect.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "expectedEffect"
      },
      {
        "id" : "Extension.extension:expectedEffect.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-expected-drug-effects"
        }
      },
      {
        "id" : "Extension.extension:offLabelUse",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:populate-if-known"
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
        "path" : "Extension.extension",
        "sliceName" : "offLabelUse",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:offLabelUse.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:offLabelUse.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "offLabelUse"
      },
      {
        "id" : "Extension.extension:offLabelUse.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:withinSoc",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:populate-if-known"
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
        "path" : "Extension.extension",
        "sliceName" : "withinSoc",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:withinSoc.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:withinSoc.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "withinSoc"
      },
      {
        "id" : "Extension.extension:withinSoc.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
