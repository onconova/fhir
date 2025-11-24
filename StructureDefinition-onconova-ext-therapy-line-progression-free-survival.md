# Therapy Line Progression-Free Survival - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Progression-Free Survival**

## Extension: Therapy Line Progression-Free Survival 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-free-survival | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:TherapyLineProgressionFreeSurvival |

The progression-free survival duration for the therapy line.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-therapy-line-progression-free-survival)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-therapy-line-progression-free-survival.csv), [Excel](StructureDefinition-onconova-ext-therapy-line-progression-free-survival.xlsx), [Schematron](StructureDefinition-onconova-ext-therapy-line-progression-free-survival.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-therapy-line-progression-free-survival",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-free-survival",
  "version" : "0.2.0",
  "name" : "TherapyLineProgressionFreeSurvival",
  "title" : "Therapy Line Progression-Free Survival",
  "status" : "active",
  "date" : "2025-11-24T11:19:41+00:00",
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
  "description" : "The progression-free survival duration for the therapy line.",
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
        "short" : "Therapy Line Progression-Free Survival",
        "definition" : "The progression-free survival duration for the therapy line."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-progression-free-survival"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      }
    ]
  }
}

```
