# Primary Cancer Recurrence Of - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Primary Cancer Recurrence Of**

## Extension: Primary Cancer Recurrence Of 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-primary-cancer-recurrence-of | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:PrimaryCancerRecurrenceOf |

Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-primary-cancer-recurrence-of)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-primary-cancer-recurrence-of.csv), [Excel](StructureDefinition-onconova-ext-primary-cancer-recurrence-of.xlsx), [Schematron](StructureDefinition-onconova-ext-primary-cancer-recurrence-of.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-primary-cancer-recurrence-of",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-primary-cancer-recurrence-of",
  "version" : "0.2.0",
  "name" : "PrimaryCancerRecurrenceOf",
  "title" : "Primary Cancer Recurrence Of",
  "status" : "active",
  "date" : "2025-11-27T10:13:46+00:00",
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
  "description" : "Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition#Condition.clinicalStatus.extension"
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
        "short" : "Primary Cancer Recurrence Of",
        "definition" : "Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-primary-cancer-recurrence-of"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
            ]
          }
        ]
      }
    ]
  }
}

```
