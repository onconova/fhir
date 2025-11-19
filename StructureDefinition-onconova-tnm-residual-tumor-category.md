# TNM Residual Tumor Category - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Residual Tumor Category**

## Resource Profile: TNM Residual Tumor Category 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category | *Version*:0.2.0 |
| Active as of 2025-11-19 | *Computable Name*:OnconovaTNMResidualTumorCategory |

 
A profile representing the TNM residual tumor category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

**Usages:**

* Refer to this Profile: [TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-tnm-residual-tumor-category)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-tnm-residual-tumor-category.csv), [Excel](StructureDefinition-onconova-tnm-residual-tumor-category.xlsx), [Schematron](StructureDefinition-onconova-tnm-residual-tumor-category.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-tnm-residual-tumor-category",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category",
  "version" : "0.2.0",
  "name" : "OnconovaTNMResidualTumorCategory",
  "title" : "TNM Residual Tumor Category",
  "status" : "active",
  "date" : "2025-11-19T14:47:01+00:00",
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
  "description" : "A profile representing the TNM residual tumor category for a cancer patient.\n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-stg-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category|0.2.0"
          },
          {
            "key" : "o-stg-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category|0.2.0"
          },
          {
            "key" : "o-stg-req-3",
            "severity" : "error",
            "human" : "The valueCodeableConcept element is required and must be provided.",
            "expression" : "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tnm-residual-tumor-category|0.2.0"
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
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "37161004",
              "display" : "Finding of residual tumor (finding)"
            }
          ]
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-tnm-residual-tumor-categories|0.2.0"
        }
      }
    ]
  }
}

```
