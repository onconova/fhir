# Recurrence Type - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recurrence Type**

## Extension: Recurrence Type 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type | *Version*:0.2.0 |
| Active as of 2025-11-07 | *Computable Name*:RecurrenceType |

Indicates the type of recurrence for the condition (local or regional).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) and [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-recurrence-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-recurrence-type.csv), [Excel](StructureDefinition-onconova-ext-recurrence-type.xlsx), [Schematron](StructureDefinition-onconova-ext-recurrence-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-recurrence-type",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type",
  "version" : "0.2.0",
  "name" : "RecurrenceType",
  "title" : "Recurrence Type",
  "status" : "active",
  "date" : "2025-11-07T05:59:36+00:00",
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
  "description" : "Indicates the type of recurrence for the condition (local or regional).",
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
        "definition" : "Indicates the type of recurrence for the condition (local or regional)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-recurrence-type|0.2.0"
        }
      }
    ]
  }
}

```
