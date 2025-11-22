# Risk Assessment Score - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk Assessment Score**

## Extension: Risk Assessment Score 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-risk-assessment-score | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:RiskAssessmentScore |

The numerical score of the risk assessment.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-risk-assessment-score)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-risk-assessment-score.csv), [Excel](StructureDefinition-onconova-ext-risk-assessment-score.xlsx), [Schematron](StructureDefinition-onconova-ext-risk-assessment-score.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-risk-assessment-score",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-risk-assessment-score",
  "version" : "0.2.0",
  "name" : "RiskAssessmentScore",
  "title" : "Risk Assessment Score",
  "status" : "active",
  "date" : "2025-11-22T09:54:31+00:00",
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
  "description" : "The numerical score of the risk assessment.",
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
        "short" : "Risk Assessment Score",
        "definition" : "The numerical score of the risk assessment."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-risk-assessment-score"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "decimal"
          },
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
