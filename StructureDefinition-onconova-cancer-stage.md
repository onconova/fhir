# Cancer Stage Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Stage Profile**

## Resource Profile: Cancer Stage Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:OnconovaCancerStage |

 
A profile representing the cancer stage for a cancer patient. 
It constrains the mCODE [CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage) to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a cancer staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-cancer-stage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-cancer-stage.csv), [Excel](StructureDefinition-onconova-cancer-stage.xlsx), [Schematron](StructureDefinition-onconova-cancer-stage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-cancer-stage",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage",
  "version" : "0.2.0",
  "name" : "OnconovaCancerStage",
  "title" : "Cancer Stage Profile",
  "status" : "active",
  "date" : "2026-02-25T14:29:35+00:00",
  "publisher" : "Onconova",
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "A profile representing the cancer stage for a cancer patient. \n\nIt constrains the mCODE [CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a cancer staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "o-stg-req-1",
        "severity" : "error",
        "human" : "The subject element is required and must be provided.",
        "expression" : "subject.exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage"
      },
      {
        "key" : "o-stg-req-2",
        "severity" : "error",
        "human" : "The effectiveDateTime element is required and must be provided.",
        "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage"
      },
      {
        "key" : "o-stg-req-3",
        "severity" : "error",
        "human" : "The valueCodeableConcept element is required and must be provided.",
        "expression" : "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage"
      },
      {
        "key" : "o-stg-breslow",
        "severity" : "error",
        "human" : "For Breslow stages, the exact Breslow depth must be provided.",
        "expression" : "code.coding.code = '106243009' implies value.extension('https://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-stage-breslow-depth').valueQuantity.value.hasValue()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-stage"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.subject",
      "extension" : [{
        "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
        "valueBoolean" : true
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"]
      }]
    },
    {
      "id" : "Observation.focus",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.effective[x]",
      "extension" : [{
        "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
        "valueBoolean" : true
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
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
      "id" : "Observation.value[x]",
      "extension" : [{
        "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
        "valueBoolean" : true
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.value[x]",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].extension:breslowDepth",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.value[x].extension",
      "sliceName" : "breslowDepth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-stage-breslow-depth"]
      }],
      "mustSupport" : true
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
      "id" : "Observation.method",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.method"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Slice based on the component.code value",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:ulceration",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "ulceration",
      "short" : "Presence of ulceration",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ulceration.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "105600-1",
          "display" : "Ulceration status [Presence] in Tissue"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ulceration.value[x]",
      "path" : "Observation.component.value[x]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://loinc.org/LL4443-9"
      }
    }]
  }
}

```
