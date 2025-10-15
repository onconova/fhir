# CTCAE Grade - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTCAE Grade**

## Extension: CTCAE Grade 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:CTCGrade |

The grade of the adverse event as defined by the Common Terminology Criteria for Adverse Events (CTCAE).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-ctc-grade)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-ctc-grade.csv), [Excel](StructureDefinition-onconova-ext-ctc-grade.xlsx), [Schematron](StructureDefinition-onconova-ext-ctc-grade.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-ctc-grade",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade",
  "version" : "0.1.0",
  "name" : "CTCGrade",
  "title" : "CTCAE Grade",
  "status" : "active",
  "date" : "2025-10-15T14:58:32+00:00",
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
  "description" : "The grade of the adverse event as defined by the Common Terminology Criteria for Adverse Events (CTCAE).",
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
      "expression" : "AdverseEvent"
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
        "short" : "CTCAE Grade",
        "definition" : "The grade of the adverse event as defined by the Common Terminology Criteria for Adverse Events (CTCAE).",
        "constraint" : [
          {
            "key" : "ctcae-grade",
            "severity" : "error",
            "human" : "The CTCAE grade must be between 1 and 5, inclusive.",
            "expression" : "valueInteger() >= 1 and valueInteger() <= 5",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade|0.1.0"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-ctc-grade"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "CTCAE Grade",
        "definition" : "The CTCAE grade must be an integer between 1 and 5, inclusive.",
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
