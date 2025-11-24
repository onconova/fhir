# Histological Differentiation - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Histological Differentiation**

## Extension: Histological Differentiation 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-histological-differentiation | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:HistologicalDifferentiation |

The histological differentiation of the tumor.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) and [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-histological-differentiation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-histological-differentiation.csv), [Excel](StructureDefinition-onconova-ext-histological-differentiation.xlsx), [Schematron](StructureDefinition-onconova-ext-histological-differentiation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-histological-differentiation",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-histological-differentiation",
  "version" : "0.2.0",
  "name" : "HistologicalDifferentiation",
  "title" : "Histological Differentiation",
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
  "description" : "The histological differentiation of the tumor.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition#Condition.extension"
    },
    {
      "type" : "element",
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition#Condition.extension"
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
        "short" : "Histological Differentiation",
        "definition" : "The histological differentiation of the tumor."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-histological-differentiation"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-differentiations"
        }
      }
    ]
  }
}

```
