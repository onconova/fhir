# Therapy Line Number - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Number**

## Extension: Therapy Line Number 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:TherapyLineNumber |

The number representing the sequence of the therapy line in the overall treatment regimen.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-therapy-line-number)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-therapy-line-number.csv), [Excel](StructureDefinition-onconova-ext-therapy-line-number.xlsx), [Schematron](StructureDefinition-onconova-ext-therapy-line-number.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-therapy-line-number",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number",
  "version" : "0.2.0",
  "name" : "TherapyLineNumber",
  "title" : "Therapy Line Number",
  "status" : "active",
  "date" : "2025-11-21T14:06:51+00:00",
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
  "description" : "The number representing the sequence of the therapy line in the overall treatment regimen.",
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
        "short" : "Therapy Line Number",
        "definition" : "The number representing the sequence of the therapy line in the overall treatment regimen."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-number"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      }
    ]
  }
}

```
