# Homologous Recombination Deficiency Interpretation - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Homologous Recombination Deficiency Interpretation**

## Extension: Homologous Recombination Deficiency Interpretation 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-homologous-recombination-deficiency-interpretation | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:HomologousRecombinationDeficiencyInterpretation |

The categorical classification of the HRD status interpreted from its value.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-homologous-recombination-deficiency-interpretation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-homologous-recombination-deficiency-interpretation.csv), [Excel](StructureDefinition-onconova-ext-homologous-recombination-deficiency-interpretation.xlsx), [Schematron](StructureDefinition-onconova-ext-homologous-recombination-deficiency-interpretation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-homologous-recombination-deficiency-interpretation",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-homologous-recombination-deficiency-interpretation",
  "version" : "0.2.0",
  "name" : "HomologousRecombinationDeficiencyInterpretation",
  "title" : "Homologous Recombination Deficiency Interpretation",
  "status" : "active",
  "date" : "2025-12-04T10:18:27+00:00",
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
  "description" : "The categorical classification of the HRD status interpreted from its value.",
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
      "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-homologous-recombination-deficiency#Observation.extension"
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
        "short" : "Homologous Recombination Deficiency Interpretation",
        "definition" : "The categorical classification of the HRD status interpreted from its value."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-homologous-recombination-deficiency-interpretation"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-homologous-recombination-deficiency-interpretations"
        }
      }
    ]
  }
}

```
