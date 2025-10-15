# Microsatellite Instability Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microsatellite Instability Profile**

## Resource Profile: Microsatellite Instability Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-microsatellite-instability | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaMicrosatelliteInstability |

 
A profile representing microsatellite instability for a cancer patient. 
This profile extends the GenomicsReporting IG[MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi)to include specific constraints and extensions relevant to Onconova. 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-microsatellite-instability)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-microsatellite-instability.csv), [Excel](StructureDefinition-onconova-microsatellite-instability.xlsx), [Schematron](StructureDefinition-onconova-microsatellite-instability.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-microsatellite-instability",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-microsatellite-instability",
  "version" : "0.1.0",
  "name" : "OnconovaMicrosatelliteInstability",
  "title" : "Microsatellite Instability Profile",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
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
  "description" : "A profile representing microsatellite instability for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi) to include specific constraints and extensions relevant to Onconova.",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi|2.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.1.0"
            ]
          }
        ]
      }
    ]
  }
}

```
