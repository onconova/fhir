# Adverse Event Resolved Date - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Resolved Date**

## Extension: Adverse Event Resolved Date 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-resolved-date | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:AdverseEventResolvedDate |

The date when the adverse event was resolved (if applicable).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-adverse-event-resolved-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-adverse-event-resolved-date.csv), [Excel](StructureDefinition-onconova-ext-adverse-event-resolved-date.xlsx), [Schematron](StructureDefinition-onconova-ext-adverse-event-resolved-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-adverse-event-resolved-date",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-resolved-date",
  "version" : "0.2.0",
  "name" : "AdverseEventResolvedDate",
  "title" : "Adverse Event Resolved Date",
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
  "description" : "The date when the adverse event was resolved (if applicable).",
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
    "expression" : "AdverseEvent.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Adverse Event Resolved Date",
      "definition" : "The date when the adverse event was resolved (if applicable).",
      "constraint" : [{
        "key" : "ctcae-grade",
        "severity" : "error",
        "human" : "The CTCAE grade must be between 1 and 5, inclusive.",
        "expression" : "valueInteger() >= 1 and valueInteger() <= 5",
        "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-resolved-date"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adverse-event-resolved-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Date resolved",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
