# Consent status - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent status**

## Extension: Consent status 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-consent-status | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:ConsentStatus |

The status of whether the patient has given or revoked consent for reasearch use.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-consent-status)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-consent-status.csv), [Excel](StructureDefinition-onconova-ext-consent-status.xlsx), [Schematron](StructureDefinition-onconova-ext-consent-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-consent-status",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-consent-status",
  "version" : "0.2.0",
  "name" : "ConsentStatus",
  "title" : "Consent status",
  "status" : "active",
  "date" : "2025-11-21T06:40:28+00:00",
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
  "description" : "The status of whether the patient has given or revoked consent for reasearch use.",
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
        "short" : "Consent status",
        "definition" : "The status of whether the patient has given or revoked consent for reasearch use."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-consent-status"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-consent-status|0.2.0"
        }
      }
    ]
  }
}

```
