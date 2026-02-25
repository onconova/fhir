# Genomic Variant Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Variant Profile**

## Resource Profile: Genomic Variant Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:OnconovaGenomicVariant |

 
A profile representing a genomic variant identified for a cancer patient. 
This profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a genomic variant in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-genomic-variant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-genomic-variant.csv), [Excel](StructureDefinition-onconova-genomic-variant.xlsx), [Schematron](StructureDefinition-onconova-genomic-variant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-genomic-variant",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant",
  "version" : "0.2.0",
  "name" : "OnconovaGenomicVariant",
  "title" : "Genomic Variant Profile",
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
  "description" : "A profile representing a genomic variant identified for a cancer patient. \n\nThis profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a genomic variant in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. ",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "o-var-req-1",
        "severity" : "error",
        "human" : "The subject element is required and must be provided.",
        "expression" : "subject.exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant"
      },
      {
        "key" : "o-var-req-2",
        "severity" : "error",
        "human" : "The effectiveDateTime element is required and must be provided.",
        "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant"
      },
      {
        "key" : "o-var-req-3",
        "severity" : "error",
        "human" : "The genes extension is required and must be provided.",
        "expression" : "component.where(code.coding.code = '48018-6').exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant"
      },
      {
        "key" : "o-var-req-4",
        "severity" : "error",
        "human" : "At least one HGVS representation (coding, protein, or genomic) must be provided.",
        "expression" : "component.where(code.coding.code = '48004-6').exists() or component.where(code.coding.code = '81290-9').exists() or component.where(code.coding.code = '48005-3').exists()",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant"
      }]
    },
    {
      "id" : "Observation.extension:genomic-variant-assessment-date",
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
      "path" : "Observation.extension",
      "sliceName" : "genomic-variant-assessment-date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-variant-assessment-date"]
      }],
      "mustSupport" : true
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
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"]
      }]
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
      "short" : "Clinically-relevant date of the genomic variant (e.g. the specimen collection date)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
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
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "type" : [{
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "min" : 3
    },
    {
      "id" : "Observation.component:conclusion-string",
      "path" : "Observation.component",
      "sliceName" : "conclusion-string",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.component:cytogenetic-location",
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
      "path" : "Observation.component",
      "sliceName" : "cytogenetic-location"
    },
    {
      "id" : "Observation.component:reference-sequence-assembly",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "reference-sequence-assembly"
    },
    {
      "id" : "Observation.component:coding-hgvs",
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
      "path" : "Observation.component",
      "sliceName" : "coding-hgvs"
    },
    {
      "id" : "Observation.component:coding-hgvs.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "A valid HGVS-formatted (version >= {hgvs-version component}) 'c.' string, e.g. NM_005228.5:c.2369C>T"
    },
    {
      "id" : "Observation.component:genomic-hgvs",
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
      "path" : "Observation.component",
      "sliceName" : "genomic-hgvs"
    },
    {
      "id" : "Observation.component:genomic-hgvs.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "A valid HGVS-formatted (version >= {hgvs-version component}) 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"
    },
    {
      "id" : "Observation.component:genomic-ref-seq",
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
      "path" : "Observation.component",
      "sliceName" : "genomic-ref-seq"
    },
    {
      "id" : "Observation.component:transcript-ref-seq",
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
      "path" : "Observation.component",
      "sliceName" : "transcript-ref-seq"
    },
    {
      "id" : "Observation.component:exact-start-end",
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
      "path" : "Observation.component",
      "sliceName" : "exact-start-end"
    },
    {
      "id" : "Observation.component:inner-start-end",
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
      "path" : "Observation.component",
      "sliceName" : "inner-start-end"
    },
    {
      "id" : "Observation.component:outer-start-end",
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
      "path" : "Observation.component",
      "sliceName" : "outer-start-end"
    },
    {
      "id" : "Observation.component:coordinate-system",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "coordinate-system"
    },
    {
      "id" : "Observation.component:ref-allele",
      "path" : "Observation.component",
      "sliceName" : "ref-allele",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.component:alt-allele",
      "path" : "Observation.component",
      "sliceName" : "alt-allele",
      "short" : "Not used in this profile",
      "definition" : "Not used in this profile"
    },
    {
      "id" : "Observation.component:coding-change-type",
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
      "path" : "Observation.component",
      "sliceName" : "coding-change-type"
    },
    {
      "id" : "Observation.component:coding-change-type.value[x]",
      "path" : "Observation.component.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-dna-change-types"
      }
    },
    {
      "id" : "Observation.component:genomic-source-class",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "genomic-source-class"
    },
    {
      "id" : "Observation.component:sample-allelic-frequency",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "sample-allelic-frequency"
    },
    {
      "id" : "Observation.component:allelic-read-depth",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "allelic-read-depth"
    },
    {
      "id" : "Observation.component:allelic-state",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "allelic-state"
    },
    {
      "id" : "Observation.component:variant-inheritance",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "variant-inheritance"
    },
    {
      "id" : "Observation.component:variation-code",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "variation-code"
    },
    {
      "id" : "Observation.component:chromosome-identifier",
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
      "path" : "Observation.component",
      "sliceName" : "chromosome-identifier"
    },
    {
      "id" : "Observation.component:protein-hgvs",
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
      "path" : "Observation.component",
      "sliceName" : "protein-hgvs"
    },
    {
      "id" : "Observation.component:protein-hgvs.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "A valid HGVS-formatted (version >= {hgvs-version component}) 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"
    },
    {
      "id" : "Observation.component:amino-acid-change-type",
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
      "path" : "Observation.component",
      "sliceName" : "amino-acid-change-type"
    },
    {
      "id" : "Observation.component:amino-acid-change-type.value[x]",
      "path" : "Observation.component.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-amino-acid-change-types"
      }
    },
    {
      "id" : "Observation.component:molecular-consequence",
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
      "path" : "Observation.component",
      "sliceName" : "molecular-consequence"
    },
    {
      "id" : "Observation.component:copy-number",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "copy-number"
    },
    {
      "id" : "Observation.component:variant-confidence-status",
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
          "valueCode" : "MAY:persist"
        },
        {
          "url" : "actor",
          "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Observation.component",
      "sliceName" : "variant-confidence-status"
    },
    {
      "id" : "Observation.component:clinical-relevance",
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
      "path" : "Observation.component",
      "sliceName" : "clinical-relevance",
      "short" : "Clinical relevance of the genomic variant",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:clinical-relevance.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LL4034-6",
          "display" : "ACMG_Clinical significance of genetic variation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:clinical-relevance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-clinical-relevances"
      }
    },
    {
      "id" : "Observation.component:nucleotides-count",
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
      "path" : "Observation.component",
      "sliceName" : "nucleotides-count",
      "short" : "Length of of the variant in nNucleotides",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:nucleotides-count.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
          "code" : "C709",
          "display" : "Nucleotides"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:nucleotides-count.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-region",
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
      },
      {
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
      "path" : "Observation.component",
      "sliceName" : "gene-region",
      "short" : "Region (exon, intron, etc.) of the gene affected by the variant",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-region.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
          "code" : "C13445",
          "display" : "Gene Feature"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-region.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-panel-sequencing",
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
      "sliceName" : "gene-panel-sequencing",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-panel-sequencing.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
          "code" : "C165600",
          "display" : "Tumor Panel Sequencing"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-panel-sequencing.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Sequencing Gene Panel",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hgvs-version",
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
      "path" : "Observation.component",
      "sliceName" : "hgvs-version",
      "short" : "HGVS Version",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hgvs-version.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "81303-0",
          "display" : "HGVS version [ID]"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hgvs-version.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rna-hgvs",
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
      "sliceName" : "rna-hgvs",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rna-hgvs.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-tbd",
          "code" : "rna-hgvs",
          "display" : "Transcript RNA change (rHGVS)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rna-hgvs.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "A valid HGVS-formatted (version >= {hgvs-version component}) 'r.' string, e.g. NM_005228.5:r.2369c>t",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```
