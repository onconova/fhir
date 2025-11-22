# Recurrence Type - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recurrence Type**

## Extension: Recurrence Type 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-differentiation | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:Differentiation |

THe histological differentiation of the tumor.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) and [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-differentiation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-differentiation.csv), [Excel](StructureDefinition-onconova-ext-differentiation.xlsx), [Schematron](StructureDefinition-onconova-ext-differentiation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-differentiation",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-differentiation",
  "version" : "0.2.0",
  "name" : "Differentiation",
  "title" : "Recurrence Type",
  "status" : "active",
  "date" : "2025-11-22T09:54:31+00:00",
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
  "description" : "THe histological differentiation of the tumor.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Recurrence Type",
        "definition" : "THe histological differentiation of the tumor."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-differentiation"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-differentiation|0.2.0"
        }
      }
    ]
  }
}

```
