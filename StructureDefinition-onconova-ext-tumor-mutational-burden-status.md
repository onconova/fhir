# Tumor Mutational Burden Status - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Mutational Burden Status**

## Extension: Tumor Mutational Burden Status 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-mutational-burden-status | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:TumorMutationalBurdenStatus |

The categorical classification of the TMB status interpreted from its value.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-tumor-mutational-burden-status)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-tumor-mutational-burden-status.csv), [Excel](StructureDefinition-onconova-ext-tumor-mutational-burden-status.xlsx), [Schematron](StructureDefinition-onconova-ext-tumor-mutational-burden-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-tumor-mutational-burden-status",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-mutational-burden-status",
  "version" : "0.2.0",
  "name" : "TumorMutationalBurdenStatus",
  "title" : "Tumor Mutational Burden Status",
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
  "description" : "The categorical classification of the TMB status interpreted from its value.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-mutational-burden#Observation.extension"
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
        "short" : "Tumor Mutational Burden Status",
        "definition" : "The categorical classification of the TMB status interpreted from its value."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-mutational-burden-status"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-mutational-burden-status-interpretations"
        }
      }
    ]
  }
}

```
