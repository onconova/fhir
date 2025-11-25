# Therapy Line Intent - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapy Line Intent**

## Extension: Therapy Line Intent 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:TherapyLineIntent |

The intent of the therapy line, such as curative or palliative.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-therapy-line-intent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-therapy-line-intent.csv), [Excel](StructureDefinition-onconova-ext-therapy-line-intent.xlsx), [Schematron](StructureDefinition-onconova-ext-therapy-line-intent.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-therapy-line-intent",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent",
  "version" : "0.2.0",
  "name" : "TherapyLineIntent",
  "title" : "Therapy Line Intent",
  "status" : "active",
  "date" : "2025-11-25T07:35:44+00:00",
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
  "description" : "The intent of the therapy line, such as curative or palliative.",
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
        "short" : "Therapy Line Intent",
        "definition" : "The intent of the therapy line, such as curative or palliative."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-intent"
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
          "valueSet" : "http://hl7.org/fhir/us/mcode/ValueSet/mcode-procedure-intent-vs"
        }
      }
    ]
  }
}

```
