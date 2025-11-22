# Genomic Assessment Date - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Assessment Date**

## Extension: Genomic Assessment Date 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-assessment-date | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:GenomicAssessmentDate |

Date at which the genomic variant was assessed and/or reported.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-genomic-assessment-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-genomic-assessment-date.csv), [Excel](StructureDefinition-onconova-ext-genomic-assessment-date.xlsx), [Schematron](StructureDefinition-onconova-ext-genomic-assessment-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-genomic-assessment-date",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-assessment-date",
  "version" : "0.2.0",
  "name" : "GenomicAssessmentDate",
  "title" : "Genomic Assessment Date",
  "status" : "active",
  "date" : "2025-11-22T09:54:31+00:00",
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
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Genomic Assessment Date",
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
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-genomic-assessment-date"
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
