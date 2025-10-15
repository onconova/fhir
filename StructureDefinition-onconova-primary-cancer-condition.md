# Primary Cancer Condition Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Primary Cancer Condition Profile**

## Resource Profile: Primary Cancer Condition Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaPrimaryCancerCondition |

 
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from:[NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary. 
It constrains the mCODE[PrimaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 

**Usages:**

* Refer to this Profile: [Karnofsky Performance Status Profile](StructureDefinition-onconova-Karnofsky-performance-status.md), [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md), [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md), [Molecular Tumor Board Molecular Comparison](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.md)...Show 5 more,[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md),[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md),[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md),[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md)and[Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-primary-cancer-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-primary-cancer-condition.csv), [Excel](StructureDefinition-onconova-primary-cancer-condition.xlsx), [Schematron](StructureDefinition-onconova-primary-cancer-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-primary-cancer-condition",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition",
  "version" : "0.1.0",
  "name" : "OnconovaPrimaryCancerCondition",
  "title" : "Primary Cancer Condition Profile",
  "status" : "active",
  "date" : "2025-10-15T15:04:18+00:00",
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
  "description" : "A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nIt constrains the mCODE [PrimaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behavior|0.1.0"
        }
      },
      {
        "id" : "Condition.extension:recurrenceOf",
        "path" : "Condition.extension",
        "sliceName" : "recurrenceOf",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-of|0.1.0"
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
              "code" : "363346000",
              "display" : "Malignant neoplastic disease"
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
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topography|0.1.0"
        }
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
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
        "id" : "Condition.stage",
        "path" : "Condition.stage",
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
