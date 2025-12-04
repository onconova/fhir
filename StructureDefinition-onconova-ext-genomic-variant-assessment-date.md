# Genomic Variant Assessment Date - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Variant Assessment Date**

## Extension: Genomic Variant Assessment Date 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-variant-assessment-date | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:GenomicVariantAssessmentDate |

Date at which the genomic variant was assessed and/or reported.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-genomic-variant-assessment-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-genomic-variant-assessment-date.csv), [Excel](StructureDefinition-onconova-ext-genomic-variant-assessment-date.xlsx), [Schematron](StructureDefinition-onconova-ext-genomic-variant-assessment-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-genomic-variant-assessment-date",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-variant-assessment-date",
  "version" : "0.2.0",
  "name" : "GenomicVariantAssessmentDate",
  "title" : "Genomic Variant Assessment Date",
  "status" : "active",
  "date" : "2025-12-04T06:29:30+00:00",
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
  "description" : "Date at which the genomic variant was assessed and/or reported.",
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
      "expression" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant#Observation.extension"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Genomic Variant Assessment Date",
        "definition" : "Date at which the genomic variant was assessed and/or reported."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-variant-assessment-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
