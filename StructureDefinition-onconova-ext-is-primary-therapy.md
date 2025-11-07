# Is Primary Therapy - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Is Primary Therapy**

## Extension: Is Primary Therapy 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-is-primary-therapy | *Version*:0.2.0 |
| Active as of 2025-11-07 | *Computable Name*:IsPrimaryTherapy |

Indicates whether this medication administration is the primary therapy within a therapy line.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-is-primary-therapy)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-is-primary-therapy.csv), [Excel](StructureDefinition-onconova-ext-is-primary-therapy.xlsx), [Schematron](StructureDefinition-onconova-ext-is-primary-therapy.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-is-primary-therapy",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-is-primary-therapy",
  "version" : "0.2.0",
  "name" : "IsPrimaryTherapy",
  "title" : "Is Primary Therapy",
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
  "description" : "Indicates whether this medication administration is the primary therapy within a therapy line.",
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
        "short" : "Is Primary Therapy",
        "definition" : "Indicates whether this medication administration is the primary therapy within a therapy line."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-is-primary-therapy"
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
