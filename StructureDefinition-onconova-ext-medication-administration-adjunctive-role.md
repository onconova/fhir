# Medication Administration Adjunctive Role - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Administration Adjunctive Role**

## Extension: Medication Administration Adjunctive Role 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-adjunctive-role | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:MedicationAdministrationAdjunctiveRole |

Indicates the role of this medication administration in the context of the overall treatment plan.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-medication-administration-adjunctive-role)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-medication-administration-adjunctive-role.csv), [Excel](StructureDefinition-onconova-ext-medication-administration-adjunctive-role.xlsx), [Schematron](StructureDefinition-onconova-ext-medication-administration-adjunctive-role.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-medication-administration-adjunctive-role",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-adjunctive-role",
  "version" : "0.2.0",
  "name" : "MedicationAdministrationAdjunctiveRole",
  "title" : "Medication Administration Adjunctive Role",
  "status" : "active",
  "date" : "2025-11-24T11:19:41+00:00",
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
  "description" : "Indicates the role of this medication administration in the context of the overall treatment plan.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration#MedicationAdministration.extension"
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
        "short" : "Medication Administration Adjunctive Role",
        "definition" : "Indicates the role of this medication administration in the context of the overall treatment plan."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-adjunctive-role"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adjunctive-therapy-roles"
        }
      }
    ]
  }
}

```
