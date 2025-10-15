# Cancer Risk Assessment Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Risk Assessment Profile**

## Resource Profile: Cancer Risk Assessment Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-risk-assessment | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaCancerRiskAssessment |

 
A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score. 
It constraints the mCODE[CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment)and expands the valuesets for cancer risk assessment methods and values. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-cancer-risk-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-cancer-risk-assessment.csv), [Excel](StructureDefinition-onconova-cancer-risk-assessment.xlsx), [Schematron](StructureDefinition-onconova-cancer-risk-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-cancer-risk-assessment",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-risk-assessment",
  "version" : "0.1.0",
  "name" : "OnconovaCancerRiskAssessment",
  "title" : "Cancer Risk Assessment Profile",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
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
  "description" : "A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score.\n\nIt constraints the mCODE [CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment) and expands the valuesets for cancer risk assessment methods and values.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.extension:riskAssessmentScore",
        "path" : "Observation.extension",
        "sliceName" : "riskAssessmentScore",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-risk-assessment-score|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-risk-assessment-methods|0.1.0"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://simplifier.net/onconova/ValueSets/onconova-cancer-risk-assessment-values|0.1.0"
        }
      }
    ]
  }
}

```
