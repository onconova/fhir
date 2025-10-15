# Genomic Variant Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Variant Profile**

## Resource Profile: Genomic Variant Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaGenomicVariant |

 
A profile representing a genomic variant identified for a cancer patient. 
This profile extends the base mCODE[GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant)(which in turn profiles the Genomics Reporting[Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova. 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

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
  "version" : "0.1.0",
  "name" : "OnconovaGenomicVariant",
  "title" : "Genomic Variant Profile",
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
  "description" : "A profile representing a genomic variant identified for a cancer patient. \n\nThis profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
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
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "min" : 2
      },
      {
        "id" : "Observation.component:nucleotidesCount",
        "path" : "Observation.component",
        "sliceName" : "nucleotidesCount",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nucleotidesCount.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C709",
              "display" : "Nucleotides"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nucleotidesCount.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:geneFeature",
        "path" : "Observation.component",
        "sliceName" : "geneFeature",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:geneFeature.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
              "code" : "C13445",
              "display" : "Gene Feature"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:geneFeature.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
