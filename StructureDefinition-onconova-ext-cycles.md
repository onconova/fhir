# Cycles - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cycles**

## Extension: Cycles 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cycles | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:Cycles |

Indicates the total number of cycles for this medication administration.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-cycles)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-cycles.csv), [Excel](StructureDefinition-onconova-ext-cycles.xlsx), [Schematron](StructureDefinition-onconova-ext-cycles.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-cycles",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cycles",
  "version" : "0.2.0",
  "name" : "Cycles",
  "title" : "Cycles",
  "status" : "active",
  "date" : "2025-11-11T12:47:38+00:00",
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
  "description" : "Indicates the total number of cycles for this medication administration.",
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
        "short" : "Cycles",
        "definition" : "Indicates the total number of cycles for this medication administration."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cycles"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
