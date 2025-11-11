# Comorbidities Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comorbidities Profile**

## Resource Profile: Comorbidities Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:OnconovaComorbidities |

 
A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes. 
The profile constrains the mCODE[Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities)to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-comorbidities)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-comorbidities.csv), [Excel](StructureDefinition-onconova-comorbidities.xlsx), [Schematron](StructureDefinition-onconova-comorbidities.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-comorbidities",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities",
  "version" : "0.2.0",
  "name" : "OnconovaComorbidities",
  "title" : "Comorbidities Profile",
  "status" : "active",
  "date" : "2025-11-11T12:47:38+00:00",
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
  "description" : "A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes.\n\nThe profile constrains the mCODE [Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities) to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. ",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "com-1",
            "severity" : "error",
            "human" : "If an index score is provided, then the comorbidity panel method must also be provided.",
            "expression" : "valueQuantity.exists() implies method.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities|0.2.0"
          },
          {
            "key" : "com-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities|0.2.0"
          },
          {
            "key" : "com-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities|0.2.0"
          },
          {
            "key" : "com-req-3",
            "severity" : "error",
            "human" : "The focus element is required and must be provided.",
            "expression" : "focus.exists() and focus.resolve().is(Condition)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-comorbidities|0.2.0"
          }
        ]
      },
      {
        "id" : "Observation.extension:comorbidConditionPresent",
        "path" : "Observation.extension",
        "sliceName" : "comorbidConditionPresent"
      },
      {
        "id" : "Observation.extension:comorbidConditionPresent.value[x]",
        "path" : "Observation.extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.extension:comorbidConditionPresent.value[x]:valueCodeableConcept",
        "path" : "Observation.extension.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icd-10-conditions|0.2.0"
        }
      },
      {
        "id" : "Observation.extension:comorbidConditionAbsent",
        "path" : "Observation.extension",
        "sliceName" : "comorbidConditionAbsent"
      },
      {
        "id" : "Observation.extension:comorbidConditionAbsent.value[x]",
        "path" : "Observation.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icd-10-conditions|0.2.0"
        }
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
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
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
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
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Comorbidity Index Score",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "patternString" : "1"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-comorbidity-panels|0.2.0"
        }
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
