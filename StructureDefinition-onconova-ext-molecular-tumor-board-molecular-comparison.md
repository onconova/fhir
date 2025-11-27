# Molecular Tumor Board Molecular Comparison - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Molecular Tumor Board Molecular Comparison**

## Extension: Molecular Tumor Board Molecular Comparison 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:MolecularTumorBoardMolecularComparison |

A comparison of molecular findings discussed during the molecular tumor board review.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Molecular Tumor Board Review Profile](StructureDefinition-onconova-molecular-tumor-board-review.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.csv), [Excel](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.xlsx), [Schematron](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-molecular-tumor-board-molecular-comparison",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison",
  "version" : "0.2.0",
  "name" : "MolecularTumorBoardMolecularComparison",
  "title" : "Molecular Tumor Board Molecular Comparison",
  "status" : "active",
  "date" : "2025-11-27T13:06:44+00:00",
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
  "description" : "A comparison of molecular findings discussed during the molecular tumor board review.",
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
        "short" : "Molecular Tumor Board Molecular Comparison",
        "definition" : "A comparison of molecular findings discussed during the molecular tumor board review."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:conducted",
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
        "path" : "Extension.extension",
        "sliceName" : "conducted",
        "short" : "Molecular comparison conducted",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:conducted.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:conducted.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "conducted"
      },
      {
        "id" : "Extension.extension:conducted.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:matchedReference",
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
        "sliceName" : "matchedReference",
        "short" : "Condition matched during molecular comparison",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:matchedReference.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:matchedReference.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "matchedReference"
      },
      {
        "id" : "Extension.extension:matchedReference.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition"
            ]
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison"
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
