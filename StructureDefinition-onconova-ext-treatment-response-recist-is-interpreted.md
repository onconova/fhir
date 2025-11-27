# Treatment Response RECIST Is Interpreted - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Treatment Response RECIST Is Interpreted**

## Extension: Treatment Response RECIST Is Interpreted 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-treatment-response-recist-is-interpreted | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:TreatmentResponseRecistIsInterpreted |

Indicates that whether the RECIST was interpreted from a radiology report rather than extracted.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-treatment-response-recist-is-interpreted)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-treatment-response-recist-is-interpreted.csv), [Excel](StructureDefinition-onconova-ext-treatment-response-recist-is-interpreted.xlsx), [Schematron](StructureDefinition-onconova-ext-treatment-response-recist-is-interpreted.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-treatment-response-recist-is-interpreted",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-treatment-response-recist-is-interpreted",
  "version" : "0.2.0",
  "name" : "TreatmentResponseRecistIsInterpreted",
  "title" : "Treatment Response RECIST Is Interpreted",
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
  "description" : "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Treatment Response RECIST Is Interpreted",
        "definition" : "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-treatment-response-recist-is-interpreted"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
