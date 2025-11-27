# Primary Cancer Condition Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Primary Cancer Condition Profile**

## Resource Profile: Primary Cancer Condition Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:OnconovaPrimaryCancerCondition |

 
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from:[NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary. 
It constrains the mCODE[PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 
Local and regional recurrences are indicated using the`clinicalStatus`and`clinicalStatus.extension`to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional). 
**Conformance:** 
Condition resources representing a primary or recurrent neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* Refer to this Profile: [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md), [Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md), [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md), [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md)...Show 20 more,[Molecular Tumor Board Molecular Comparison](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.md),[Primary Cancer Recurrence Of](StructureDefinition-onconova-ext-primary-cancer-recurrence-of.md),[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md),[Karnofsky Performance Status Profile](StructureDefinition-onconova-karnofsky-performance-status.md),[Lymphoma Stage](StructureDefinition-onconova-lymphoma-stage.md),[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md),[Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md),[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md),[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md),[TNM Distant Metastases Category Profile](StructureDefinition-onconova-tnm-distant-metastases-category.md),[TNM Grade Category Profile](StructureDefinition-onconova-tnm-grade-category.md),[TNM Lymphatic Invasion Category Profile](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md),[TNM Perineural Invasion Category Profile](StructureDefinition-onconova-tnm-perineural-invasion-category.md),[TNM Primary Tumor Category Profile](StructureDefinition-onconova-tnm-primary-tumor-category.md),[TNM Regional Nodes Category Profile](StructureDefinition-onconova-tnm-regional-nodes-category.md),[TNM Residual Tumor Category Profile](StructureDefinition-onconova-tnm-residual-tumor-category.md),[TNM Serum Tumor Marker Level Category Profile](StructureDefinition-onconova-tnm-serum-tumor-marker-level-category.md),[TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md),[TNM Venous Invasion Category Profile](StructureDefinition-onconova-tnm-venous-invasion-category.md)and[Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

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
  "version" : "0.2.0",
  "name" : "OnconovaPrimaryCancerCondition",
  "title" : "Primary Cancer Condition Profile",
  "status" : "active",
  "date" : "2025-11-27T10:13:46+00:00",
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
  "description" : "A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nIt constrains the mCODE [PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. \n\nLocal and regional recurrences are indicated using the `clinicalStatus` and `clinicalStatus.extension` to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional).\n\n**Conformance:**\n\nCondition resources representing a primary or recurrent neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. \n",
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
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition",
        "constraint" : [
          {
            "key" : "o-con-1",
            "severity" : "error",
            "human" : "If clinicalStatus is 'recurrence', the recurrenceOf extension must be provided.",
            "expression" : "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-of').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          },
          {
            "key" : "o-con-2",
            "severity" : "error",
            "human" : "If clinicalStatus is 'recurrence', the type of recurrence must be provided.",
            "expression" : "clinicalStatus.exists() and clinicalStatus.coding.code = 'recurrence' implies clinicalStatus.extension('http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          },
          {
            "key" : "o-con-req-1",
            "severity" : "error",
            "human" : "The subject element is required and must be provided.",
            "expression" : "subject.exists() and subject.resolve().is(Patient)",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          },
          {
            "key" : "o-con-req-2",
            "severity" : "error",
            "human" : "The assertedDate extension is required and must be provided.",
            "expression" : "extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          },
          {
            "key" : "o-con-req-3",
            "severity" : "error",
            "human" : "The bodySite element is required and must be provided.",
            "expression" : "bodySite.exists() and bodySite.coding.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          },
          {
            "key" : "o-con-req-4",
            "severity" : "error",
            "human" : "The histologyMorphologyBehavior extension is required and must be provided.",
            "expression" : "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition"
          }
        ]
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "min" : 1
      },
      {
        "id" : "Condition.extension:assertedDate",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.extension",
        "sliceName" : "assertedDate"
      },
      {
        "id" : "Condition.extension:histologyMorphologyBehavior",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.extension",
        "sliceName" : "histologyMorphologyBehavior",
        "min" : 1
      },
      {
        "id" : "Condition.extension:histologyMorphologyBehavior.value[x]",
        "path" : "Condition.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behaviors"
        }
      },
      {
        "id" : "Condition.extension:differentiation",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.extension",
        "sliceName" : "differentiation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-histological-differentiation"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.clinicalStatus.extension:recurrenceType",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.clinicalStatus.extension",
        "sliceName" : "recurrenceType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-primary-cancer-recurrence-type"
            ]
          }
        ]
      },
      {
        "id" : "Condition.clinicalStatus.extension:recurrenceOf",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.clinicalStatus.extension",
        "sliceName" : "recurrenceOf",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-primary-cancer-recurrence-of"
            ]
          }
        ],
        "mustSupport" : true
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.bodySite",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topographies"
        }
      },
      {
        "id" : "Condition.bodySite.extension:locationQualifier",
        "path" : "Condition.bodySite.extension",
        "sliceName" : "locationQualifier",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Condition.bodySite.extension:lateralityQualifier",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.bodySite.extension",
        "sliceName" : "lateralityQualifier"
      },
      {
        "id" : "Condition.subject",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
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
