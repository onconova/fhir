# Therapy Line Reference - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Reference**

## Extension: Therapy Line Reference 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/ext-therapy-line-reference | *Version*:0.2.0 |
| Active as of 2025-11-07 | *Computable Name*:TherapyLineReference |

A reference to the therapy line associated with this treatment.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md), [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md) and [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/ext-therapy-line-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-therapy-line-reference.csv), [Excel](StructureDefinition-ext-therapy-line-reference.xlsx), [Schematron](StructureDefinition-ext-therapy-line-reference.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-therapy-line-reference",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/ext-therapy-line-reference",
  "version" : "0.2.0",
  "name" : "TherapyLineReference",
  "title" : "Therapy Line Reference",
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
  "description" : "A reference to the therapy line associated with this treatment.",
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
        "short" : "Therapy Line Reference",
        "definition" : "A reference to the therapy line associated with this treatment."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/ext-therapy-line-reference"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-therapy-line|0.2.0"
            ]
          }
        ]
      }
    ]
  }
}

```
