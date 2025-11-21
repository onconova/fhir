# Cancer Morphology - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Morphology**

## Extension: Cancer Morphology 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-morphology | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:CancerMorphology |

The morphology of the cancer, represented by a ICD-O-3 code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Family Member History](StructureDefinition-onconova-cancer-family-member-history.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-cancer-morphology)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-cancer-morphology.csv), [Excel](StructureDefinition-onconova-ext-cancer-morphology.xlsx), [Schematron](StructureDefinition-onconova-ext-cancer-morphology.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-cancer-morphology",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-morphology",
  "version" : "0.2.0",
  "name" : "CancerMorphology",
  "title" : "Cancer Morphology",
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
  "description" : "The morphology of the cancer, represented by a ICD-O-3 code.",
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
      "expression" : "Condition"
    },
    {
      "type" : "element",
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history#FamilyMemberHistory.condition"
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
        "short" : "Cancer Morphology",
        "definition" : "The morphology of the cancer, represented by a ICD-O-3 code."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-morphology"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behavior|0.2.0"
        }
      }
    ]
  }
}

```
