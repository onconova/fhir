# Recist Is Interpreted - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recist Is Interpreted**

## Extension: Recist Is Interpreted 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recist-is-interpreted | *Version*:0.2.0 |
| Active as of 2025-11-18 | *Computable Name*:RecistIsInterpreted |

Indicates that whether the RECIST was interpreted from a radiology report rather than extracted.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-recist-is-interpreted)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-recist-is-interpreted.csv), [Excel](StructureDefinition-onconova-ext-recist-is-interpreted.xlsx), [Schematron](StructureDefinition-onconova-ext-recist-is-interpreted.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-recist-is-interpreted",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recist-is-interpreted",
  "version" : "0.2.0",
  "name" : "RecistIsInterpreted",
  "title" : "Recist Is Interpreted",
  "status" : "active",
  "date" : "2025-11-18T09:06:42+00:00",
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
  "description" : "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted.",
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
        "short" : "Recist Is Interpreted",
        "definition" : "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recist-is-interpreted"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
