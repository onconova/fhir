# Family Member History Cancer Topography - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Family Member History Cancer Topography**

## Extension: Family Member History Cancer Topography 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-history-member-cancer-topography | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:FamilyMemberHistoryCancerTopography |

The topography of a historical cancer associated to a family member of a patient, represented by an ICD-O-3 code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-family-history-member-cancer-topography)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-family-history-member-cancer-topography.csv), [Excel](StructureDefinition-onconova-ext-family-history-member-cancer-topography.xlsx), [Schematron](StructureDefinition-onconova-ext-family-history-member-cancer-topography.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-family-history-member-cancer-topography",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-history-member-cancer-topography",
  "version" : "0.2.0",
  "name" : "FamilyMemberHistoryCancerTopography",
  "title" : "Family Member History Cancer Topography",
  "status" : "active",
  "date" : "2026-02-25T15:12:31+00:00",
  "publisher" : "Onconova",
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "The topography of a historical cancer associated to a family member of a patient, represented by an ICD-O-3 code.",
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
    "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history#FamilyMemberHistory.condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Family Member History Cancer Topography",
      "definition" : "The topography of a historical cancer associated to a family member of a patient, represented by an ICD-O-3 code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-history-member-cancer-topography"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topographies"
      }
    }]
  }
}

```
