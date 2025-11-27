# Cancer Stage Breslow Depth - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Stage Breslow Depth**

## Extension: Cancer Stage Breslow Depth 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-stage-breslow-depth | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:CancerStageBreslowDepth |

The actual measured Breslow depth as a quantity

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-cancer-stage-breslow-depth)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-cancer-stage-breslow-depth.csv), [Excel](StructureDefinition-onconova-ext-cancer-stage-breslow-depth.xlsx), [Schematron](StructureDefinition-onconova-ext-cancer-stage-breslow-depth.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-cancer-stage-breslow-depth",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-stage-breslow-depth",
  "version" : "0.2.0",
  "name" : "CancerStageBreslowDepth",
  "title" : "Cancer Stage Breslow Depth",
  "status" : "active",
  "date" : "2025-11-27T13:06:44+00:00",
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
  "description" : "The actual measured Breslow depth as a quantity",
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
      "expression" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage#Observation.value[x].extension"
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
        "short" : "Cancer Stage Breslow Depth",
        "definition" : "The actual measured Breslow depth as a quantity"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-stage-breslow-depth"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "mm"
      }
    ]
  }
}

```
