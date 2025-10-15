# Imaging Disease Status Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Imaging Disease Status Profile**

## Resource Profile: Imaging Disease Status Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-imaging-disease-status | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaImagingDiseaseStatus |

 
A profile representing the imaging-based disease status of a cancer patient. 
It constrains the mCODE[CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status)to restrict it to imaging-based monitoring evaluated based on RECIST criteria. 

**Usages:**

* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-imaging-disease-status)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-imaging-disease-status.csv), [Excel](StructureDefinition-onconova-imaging-disease-status.xlsx), [Schematron](StructureDefinition-onconova-imaging-disease-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-imaging-disease-status",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-imaging-disease-status",
  "version" : "0.1.0",
  "name" : "OnconovaImagingDiseaseStatus",
  "title" : "Imaging Disease Status Profile",
  "status" : "active",
  "date" : "2025-10-15T14:58:32+00:00",
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
  "description" : "A profile representing the imaging-based disease status of a cancer patient.\n\nIt constrains the mCODE [CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status) to restrict it to imaging-based monitoring evaluated based on RECIST criteria.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension:evidenceType",
        "path" : "Observation.extension",
        "sliceName" : "evidenceType"
      },
      {
        "id" : "Observation.extension:evidenceType.value[x]",
        "path" : "Observation.extension.value[x]",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "363679005",
              "display" : "Imaging (procedure)"
            }
          ]
        }
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "imaging",
              "display" : "Imaging"
            }
          ]
        }
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
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.1.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-observation-bodysites|0.1.0"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-imaging-methods|0.1.0"
        }
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
