# Secondary Cancer Condition Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Secondary Cancer Condition Profile**

## Resource Profile: Secondary Cancer Condition Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:OnconovaSecondaryCancerCondition |

 
A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms). 
It constrains the mCODE[SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 

**Usages:**

* Refer to this Profile: [Molecular Tumor Board Molecular Comparison](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.md), [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md), [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md), [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md) and [Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-secondary-cancer-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-secondary-cancer-condition.csv), [Excel](StructureDefinition-onconova-secondary-cancer-condition.xlsx), [Schematron](StructureDefinition-onconova-secondary-cancer-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-secondary-cancer-condition",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition",
  "version" : "0.2.0",
  "name" : "OnconovaSecondaryCancerCondition",
  "title" : "Secondary Cancer Condition Profile",
  "status" : "active",
  "date" : "2025-11-21T12:46:13+00:00",
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
  "description" : "A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).\n\nIt constrains the mCODE [SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition",
        "constraint" : [
          {
            "key" : "o-con-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.2.0"
          },
          {
            "key" : "o-con-req-2",
            "severity" : "error",
            "human" : "The assertedDate extension is required and must be provided.",
            "expression" : "extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.2.0"
          },
          {
            "key" : "o-con-req-3",
            "severity" : "error",
            "human" : "The bodySite element is required and must be provided.",
            "expression" : "bodySite.exists() and bodySite.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.2.0"
          },
          {
            "key" : "o-con-req-4",
            "severity" : "error",
            "human" : "The histologyMorphologyBehavior extension is required and must be provided.",
            "expression" : "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.2.0"
          }
        ]
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "min" : 1
      },
      {
        "id" : "Condition.extension:histologyMorphologyBehavior",
        "path" : "Condition.extension",
        "sliceName" : "histologyMorphologyBehavior",
        "min" : 1
      },
      {
        "id" : "Condition.extension:histologyMorphologyBehavior.value[x]",
        "path" : "Condition.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behavior|0.2.0"
        }
      },
      {
        "id" : "Condition.extension:relatedPrimaryCancerCondition",
        "path" : "Condition.extension",
        "sliceName" : "relatedPrimaryCancerCondition"
      },
      {
        "id" : "Condition.extension:relatedPrimaryCancerCondition.value[x]",
        "path" : "Condition.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Condition.extension:differentiation",
        "path" : "Condition.extension",
        "sliceName" : "differentiation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-differentiation|0.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.severity",
        "path" : "Condition.severity",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "128462008",
              "display" : "Secondary malignant neoplastic disease"
            }
          ]
        }
      },
      {
        "id" : "Condition.bodySite",
        "path" : "Condition.bodySite",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topography|0.2.0"
        }
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
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
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.recorder",
        "path" : "Condition.recorder",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.asserter",
        "path" : "Condition.asserter",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.evidence",
        "path" : "Condition.evidence",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
