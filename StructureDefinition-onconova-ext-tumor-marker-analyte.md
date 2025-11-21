# Tumor Marker Analyte - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Marker Analyte**

## Extension: Tumor Marker Analyte 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:TumorMarkerAnalyte |

The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-tumor-marker-analyte)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-tumor-marker-analyte.csv), [Excel](StructureDefinition-onconova-ext-tumor-marker-analyte.xlsx), [Schematron](StructureDefinition-onconova-ext-tumor-marker-analyte.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-tumor-marker-analyte",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte",
  "version" : "0.2.0",
  "name" : "TumorMarkerAnalyte",
  "title" : "Tumor Marker Analyte",
  "status" : "active",
  "date" : "2025-11-21T14:06:51+00:00",
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
  "description" : "The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA.",
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
        "short" : "Tumor Marker Analyte",
        "definition" : "The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-analytes|0.2.0"
        }
      }
    ]
  }
}

```
