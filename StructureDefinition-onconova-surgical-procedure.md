# Surgical Procedure Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Surgical Procedure Profile**

## Resource Profile: Surgical Procedure Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:OnconovaSurgicalProcedure |

 
A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. 
It extends the base mCODE [CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure) to include specific constraints and requirements for Onconova. 
**Conformance:** 
Procedure resources representing a surgery in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 

**Usages:**

* Refer to this Profile: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-surgical-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-surgical-procedure.csv), [Excel](StructureDefinition-onconova-surgical-procedure.xlsx), [Schematron](StructureDefinition-onconova-surgical-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-surgical-procedure",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure",
  "version" : "0.2.0",
  "name" : "OnconovaSurgicalProcedure",
  "title" : "Surgical Procedure Profile",
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
  "description" : "A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. \n\nIt extends the base mCODE [CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure) to include specific constraints and requirements for Onconova.\n\n**Conformance:**\n\nProcedure resources representing a surgery in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "constraint" : [{
        "key" : "o-sur-req-1",
        "severity" : "error",
        "human" : "The subject element is required and must be provided.",
        "expression" : "subject.exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure"
      },
      {
        "key" : "o-sur-req-2",
        "severity" : "error",
        "human" : "The performedDateTime element is required and must be provided.",
        "expression" : "performedDateTime.exists() and performedDateTime.hasValue()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure"
      },
      {
        "key" : "o-sur-req-3",
        "severity" : "error",
        "human" : "The code element is required and must be provided.",
        "expression" : "code.exists() and code.coding.exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure"
      },
      {
        "key" : "o-sur-req-4",
        "severity" : "error",
        "human" : "The treatmentIntent extension is required and must be provided.",
        "expression" : "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent').exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-surgical-procedure"
      }]
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "min" : 1
    },
    {
      "id" : "Procedure.extension:treatmentIntent",
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
      "path" : "Procedure.extension",
      "sliceName" : "treatmentIntent",
      "min" : 1
    },
    {
      "id" : "Procedure.extension:treatmentIntent.value[x]",
      "path" : "Procedure.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-intents"
      }
    },
    {
      "id" : "Procedure.extension:therapyLine",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "MAY:ignore"
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.extension",
      "sliceName" : "therapyLine",
      "short" : "Reference to the therapy line associated with this treatment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-reference"]
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.code",
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
      "path" : "Procedure.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-surgical-procedures"
      }
    },
    {
      "id" : "Procedure.subject",
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
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.performed[x]",
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
      "path" : "Procedure.performed[x]",
      "short" : "The date on which the surgical procedure was performed",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.reasonReference",
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
      "path" : "Procedure.reasonReference",
      "short" : "The condition(s) that motivated the surgical procedure",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition",
        "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition"]
      }]
    },
    {
      "id" : "Procedure.outcome",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:populate-if-available"
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.outcome",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-outcome"
      }
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    }]
  }
}

```
