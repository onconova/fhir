# Therapy Line Period - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Period**

## Extension: Therapy Line Period 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-period | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:TherapyLinePeriod |

The period during which the therapy line was performed.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-therapy-line-period)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-therapy-line-period.csv), [Excel](StructureDefinition-onconova-ext-therapy-line-period.xlsx), [Schematron](StructureDefinition-onconova-ext-therapy-line-period.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-therapy-line-period",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-period",
  "version" : "0.2.0",
  "name" : "TherapyLinePeriod",
  "title" : "Therapy Line Period",
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
  "description" : "The period during which the therapy line was performed.",
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
        "short" : "Therapy Line Period",
        "definition" : "The period during which the therapy line was performed."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-period"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      }
    ]
  }
}

```
