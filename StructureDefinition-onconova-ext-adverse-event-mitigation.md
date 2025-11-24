# Adverse Event Mitigation - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation**

## Extension: Adverse Event Mitigation 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:AdverseEventMitigation |

Details about an action taken to mitigate or manage the adverse event.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-adverse-event-mitigation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-adverse-event-mitigation.csv), [Excel](StructureDefinition-onconova-ext-adverse-event-mitigation.xlsx), [Schematron](StructureDefinition-onconova-ext-adverse-event-mitigation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-adverse-event-mitigation",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation",
  "version" : "0.2.0",
  "name" : "AdverseEventMitigation",
  "title" : "Adverse Event Mitigation",
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
  "description" : "Details about an action taken to mitigate or manage the adverse event.",
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
      "expression" : "AdverseEvent.extension"
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
        "short" : "Adverse Event Mitigation",
        "definition" : "Details about an action taken to mitigate or manage the adverse event.",
        "constraint" : [
          {
            "key" : "drug-mitigation",
            "severity" : "error",
            "human" : "If the mitigation category is 'Drug', then only mitigation drug must be specified.",
            "expression" : "extension('category').valueCodeableConcept.coding.code = 'C49158' implies (extension('drug').exists() and not extension('procedure').exists() and not extension('adjustment').exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation"
          },
          {
            "key" : "adjustment-mitigation",
            "severity" : "error",
            "human" : "If the mitigation category is 'Adjustment', then only mitigation adjustment must be specified.",
            "expression" : "extension('category').valueCodeableConcept.coding.code = 'C49157' implies (extension('adjustment').exists() and not extension('procedure').exists() and not extension('drug').exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation"
          },
          {
            "key" : "procedural-mitigation",
            "severity" : "error",
            "human" : "If the mitigation category is 'Procedure', then only mitigation procedure must be specified.",
            "expression" : "extension('category').valueCodeableConcept.coding.code = 'C49159' implies (extension('procedure').exists() and not extension('adjustment').exists() and not extension('drug').exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:category",
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
        "sliceName" : "category",
        "short" : "Mitigation Category",
        "definition" : "Type of mitigation action taken to address the adverse event.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:category.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:category.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "category"
      },
      {
        "id" : "Extension.extension:category.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-categories"
        }
      },
      {
        "id" : "Extension.extension:adjustment",
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
        "sliceName" : "adjustment",
        "short" : "Treatment Adjustment",
        "definition" : "Details of any adjustments made to the treatment regimen in response to the adverse event.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:adjustment.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:adjustment.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "adjustment"
      },
      {
        "id" : "Extension.extension:adjustment.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-treatment-adjustments"
        }
      },
      {
        "id" : "Extension.extension:drug",
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
        "sliceName" : "drug",
        "short" : "Mitigation Drug",
        "definition" : "Medication administered to mitigate the adverse event.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:drug.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:drug.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "drug"
      },
      {
        "id" : "Extension.extension:drug.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-drugs"
        }
      },
      {
        "id" : "Extension.extension:procedure",
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
        "sliceName" : "procedure",
        "short" : "Mitigation Procedure",
        "definition" : "Procedure performed to mitigate the adverse event.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:procedure.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:procedure.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "procedure"
      },
      {
        "id" : "Extension.extension:procedure.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-procedures"
        }
      },
      {
        "id" : "Extension.extension:management",
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
        "path" : "Extension.extension",
        "sliceName" : "management",
        "short" : "Management",
        "definition" : "Management strategies employed to address the adverse event.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:management.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:management.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "management"
      },
      {
        "id" : "Extension.extension:management.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-managements"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-mitigation"
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
