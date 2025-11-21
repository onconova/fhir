# Tumor Marker Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Marker Profile**

## Resource Profile: Tumor Marker Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:OnconovaTumorMarker |

 
A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. 
This profile extends the base mCODE[TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test)to include specific constraints and requirements for Onconova. 
If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level). 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-tumor-marker)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-tumor-marker.csv), [Excel](StructureDefinition-onconova-tumor-marker.xlsx), [Schematron](StructureDefinition-onconova-tumor-marker.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-tumor-marker",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker",
  "version" : "0.2.0",
  "name" : "OnconovaTumorMarker",
  "title" : "Tumor Marker Profile",
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
  "description" : "A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. \n\nThis profile extends the base mCODE [TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test) to include specific constraints and requirements for Onconova.\n\nIf relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level).",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "constraint" : [
          {
            "key" : "o-tma-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker|0.2.0"
          },
          {
            "key" : "o-tma-req-2",
            "severity" : "error",
            "human" : "The effectiveDateTime element is required and must be provided.",
            "expression" : "effectiveDateTime.exists() and effectiveDateTime.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker|0.2.0"
          },
          {
            "key" : "o-tma-req-3",
            "severity" : "error",
            "human" : "The tumorMarkerAnalyte element is required and must be provided.",
            "expression" : "extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-tumor-marker|0.2.0"
          }
        ]
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "min" : 1
      },
      {
        "id" : "Observation.extension:tumorMarkerAnalyte",
        "path" : "Observation.extension",
        "sliceName" : "tumorMarkerAnalyte",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
