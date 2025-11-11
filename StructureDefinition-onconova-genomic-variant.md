# Genomic Variant Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Variant Profile**

## Resource Profile: Genomic Variant Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:OnconovaGenomicVariant |

 
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
  "version" : "0.2.0",
  "name" : "OnconovaGenomicVariant",
  "title" : "Genomic Variant Profile",
  "status" : "active",
  "date" : "2025-11-11T12:30:26+00:00",
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
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-var-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant|0.2.0"
          },
          {
            "key" : "o-var-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant|0.2.0"
          },
          {
            "key" : "o-var-req-3",
            "severity" : "error",
            "human" : "The genes extension is required and must be provided.",
            "expression" : "component.where(code.coding.code = '48018-6').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant|0.2.0"
          },
          {
            "key" : "o-var-req-4",
            "severity" : "error",
            "human" : "At least one HGVS representation (coding, protein, or genomic) must be provided.",
            "expression" : "component.where(code.coding.code = '48004-6').exists() or component.where(code.coding.code = '81290-9').exists() or component.where(code.coding.code = '48005-3').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-genomic-variant|0.2.0"
          }
        ]
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "min" : 1
      },
      {
        "id" : "Observation.extension:genePanel",
        "path" : "Observation.extension",
        "sliceName" : "genePanel",
        "short" : "Gene Panel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-gene-panel|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:hgvsVersion",
        "path" : "Observation.extension",
        "sliceName" : "hgvsVersion",
        "short" : "HGVS Version",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-hgvs-version|0.2.0"
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
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "min" : 2
      },
      {
        "id" : "Observation.component:coding-hgvs",
        "path" : "Observation.component",
        "sliceName" : "coding-hgvs"
      },
      {
        "id" : "Observation.component:coding-hgvs.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "A valid HGVS-formatted (version >=21.1) 'c.' string, e.g. NM_005228.5:c.2369C>T"
      },
      {
        "id" : "Observation.component:genomic-hgvs",
        "path" : "Observation.component",
        "sliceName" : "genomic-hgvs"
      },
      {
        "id" : "Observation.component:genomic-hgvs.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "A valid HGVS-formatted (version >=21.1) 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"
      },
      {
        "id" : "Observation.component:protein-hgvs",
        "path" : "Observation.component",
        "sliceName" : "protein-hgvs"
      },
      {
        "id" : "Observation.component:protein-hgvs.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "A valid HGVS-formatted (version >=21.1) 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"
      },
      {
        "id" : "Observation.component:nucleotidesCount",
        "path" : "Observation.component",
        "sliceName" : "nucleotidesCount",
        "short" : "Length of of the variant in nNucleotides",
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
        "id" : "Observation.component:geneRegion",
        "path" : "Observation.component",
        "sliceName" : "geneRegion",
        "short" : "Region (exon, intron, etc.) of the gene affected by the variant",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:geneRegion.code",
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
        "id" : "Observation.component:geneRegion.value[x]",
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
