# HGVS Version - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HGVS Version**

## Extension: HGVS Version 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-hgvs-version | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:HgvsVersion |

The version of the HGVS nomenclature used for representing the variant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-hgvs-version)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-hgvs-version.csv), [Excel](StructureDefinition-onconova-ext-hgvs-version.xlsx), [Schematron](StructureDefinition-onconova-ext-hgvs-version.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-hgvs-version",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-hgvs-version",
  "version" : "0.2.0",
  "name" : "HgvsVersion",
  "title" : "HGVS Version",
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
  "description" : "The version of the HGVS nomenclature used for representing the variant.",
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
        "short" : "HGVS Version",
        "definition" : "The version of the HGVS nomenclature used for representing the variant."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-hgvs-version"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "patternString" : ">=21.1"
      }
    ]
  }
}

```
