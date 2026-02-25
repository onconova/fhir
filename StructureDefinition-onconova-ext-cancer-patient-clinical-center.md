# Cancer Patient Clinical Center - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Patient Clinical Center**

## Extension: Cancer Patient Clinical Center 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:CancerPatientClinicalCenter |

The center or hospital where the patient case original records were recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-cancer-patient-clinical-center)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-cancer-patient-clinical-center.csv), [Excel](StructureDefinition-onconova-ext-cancer-patient-clinical-center.xlsx), [Schematron](StructureDefinition-onconova-ext-cancer-patient-clinical-center.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-cancer-patient-clinical-center",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center",
  "version" : "0.2.0",
  "name" : "CancerPatientClinicalCenter",
  "title" : "Cancer Patient Clinical Center",
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
  "description" : "The center or hospital where the patient case original records were recorded.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient#Patient.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Cancer Patient Clinical Center",
      "definition" : "The center or hospital where the patient case original records were recorded."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
