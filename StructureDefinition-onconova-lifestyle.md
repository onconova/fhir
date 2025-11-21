# Lifestyle Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lifestyle Profile**

## Resource Profile: Lifestyle Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:OnconovaLifestyle |

 
A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). 
It directly profiles the base FHIR`Observation`resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-lifestyle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-lifestyle.csv), [Excel](StructureDefinition-onconova-lifestyle.xlsx), [Schematron](StructureDefinition-onconova-lifestyle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-lifestyle",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle",
  "version" : "0.2.0",
  "name" : "OnconovaLifestyle",
  "title" : "Lifestyle Profile",
  "status" : "active",
  "date" : "2025-11-21T12:46:13+00:00",
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
  "description" : "A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). \n\nIt directly profiles the base FHIR `Observation` resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. ",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation|6.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-lif-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle|0.2.0"
          },
          {
            "key" : "o-lif-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-lifestyle|0.2.0"
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
              "system" : "http://loinc.org",
              "code" : "LA32823-9",
              "display" : "Lifestyle"
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
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
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
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "description" : "Slice based on the component.code value",
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:smokingStatus",
        "path" : "Observation.component",
        "sliceName" : "smokingStatus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingStatus.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "72166-2",
              "display" : "Tobacco smoking status"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-smoking-status|0.2.0"
        }
      },
      {
        "id" : "Observation.component:smokingPackyears",
        "path" : "Observation.component",
        "sliceName" : "smokingPackyears",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingPackyears.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8664-5",
              "display" : "Cigarettes smoked total (pack per year) - Reported"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingPackyears.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingPackyears.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:smokingPackyears.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "{pack-year}"
      },
      {
        "id" : "Observation.component:smokingQuited",
        "path" : "Observation.component",
        "sliceName" : "smokingQuited",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingQuited.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "107339-4",
              "display" : "Temporary smoking cessation [Time]"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:smokingQuited.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time|4.0.1"
        }
      },
      {
        "id" : "Observation.component:alcoholConsumption",
        "path" : "Observation.component",
        "sliceName" : "alcoholConsumption",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alcoholConsumption.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "1106630-7",
              "display" : "Alcohol use pattern"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alcoholConsumption.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://loinc.org/vs/LL2179-1"
        }
      },
      {
        "id" : "Observation.component:nightSleep",
        "path" : "Observation.component",
        "sliceName" : "nightSleep",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nightSleep.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "93832-4",
              "display" : "Sleep duration"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nightSleep.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time|4.0.1"
        }
      },
      {
        "id" : "Observation.component:recreationalDrug",
        "path" : "Observation.component",
        "sliceName" : "recreationalDrug",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:recreationalDrug.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C84368",
              "display" : "Recreational Drug"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:recreationalDrug.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-recreational-drugs|0.2.0"
        }
      },
      {
        "id" : "Observation.component:exposures",
        "path" : "Observation.component",
        "sliceName" : "exposures",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:exposures.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C16552",
              "display" : "Environmental Exposure"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:exposures.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-exposure-agents|0.2.0"
        }
      }
    ]
  }
}

```
