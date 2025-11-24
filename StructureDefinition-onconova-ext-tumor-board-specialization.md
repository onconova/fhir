# Tumor Board Specialization - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Board Specialization**

## Extension: Tumor Board Specialization 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-board-specialization | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:TumorBoardSpecialization |

The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-tumor-board-specialization)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-tumor-board-specialization.csv), [Excel](StructureDefinition-onconova-ext-tumor-board-specialization.xlsx), [Schematron](StructureDefinition-onconova-ext-tumor-board-specialization.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-tumor-board-specialization",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-board-specialization",
  "version" : "0.2.0",
  "name" : "TumorBoardSpecialization",
  "title" : "Tumor Board Specialization",
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
  "description" : "The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors.",
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
        "short" : "Tumor Board Specialization",
        "definition" : "The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-board-specialization"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
