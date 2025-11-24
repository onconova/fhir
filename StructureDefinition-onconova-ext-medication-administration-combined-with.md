# Medication Administration Combined With - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Administration Combined With**

## Extension: Medication Administration Combined With 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-combined-with | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:MedicationAdministrationCombinedWith |

Indicates which medication administrations were given in combination with the current medication administration.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-medication-administration-combined-with)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-medication-administration-combined-with.csv), [Excel](StructureDefinition-onconova-ext-medication-administration-combined-with.xlsx), [Schematron](StructureDefinition-onconova-ext-medication-administration-combined-with.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-medication-administration-combined-with",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-combined-with",
  "version" : "0.2.0",
  "name" : "MedicationAdministrationCombinedWith",
  "title" : "Medication Administration Combined With",
  "status" : "active",
  "date" : "2025-11-24T08:04:46+00:00",
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
  "description" : "Indicates which medication administrations were given in combination with the current medication administration.",
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
      "expression" : "MedicationAdministration.extension"
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
        "short" : "Medication Administration Combined With",
        "definition" : "Indicates which medication administrations were given in combination with the current medication administration."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-combined-with"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration"
            ]
          }
        ]
      }
    ]
  }
}

```
