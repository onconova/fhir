# Cancer Patient End of Records - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Patient End of Records**

## Extension: Cancer Patient End of Records 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:CancerPatientEndOfRecords |

Indicates the last known record date of a patient.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-cancer-patient-end-of-records)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-cancer-patient-end-of-records.csv), [Excel](StructureDefinition-onconova-ext-cancer-patient-end-of-records.xlsx), [Schematron](StructureDefinition-onconova-ext-cancer-patient-end-of-records.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-cancer-patient-end-of-records",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records",
  "version" : "0.2.0",
  "name" : "CancerPatientEndOfRecords",
  "title" : "Cancer Patient End of Records",
  "status" : "active",
  "date" : "2025-11-25T07:35:44+00:00",
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
  "description" : "Indicates the last known record date of a patient.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient#Patient.extension"
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
        "short" : "Cancer Patient End of Records",
        "definition" : "Indicates the last known record date of a patient."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
