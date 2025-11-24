# Cancer Patient Profile - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Patient Profile**

## Resource Profile: Cancer Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:OnconovaCancerPatient |

 
A profile representing a patient with or is receiving medical treatment for a malignant growth or tumor. 
It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)with specific extensions and constraints for the Onconova use case. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile if the`Must-Support`extensions are accounted for. 
**Conformance:** 
Patient resources representing Cancer Patients in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

**Usages:**

* Refer to this Profile: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md), [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md), [Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md), [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)...Show 30 more,[Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md),[Comorbidities Profile](StructureDefinition-onconova-comorbidities.md),[ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md),[Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md),[Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md),[Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md),[Karnofsky Performance Status Profile](StructureDefinition-onconova-karnofsky-performance-status.md),[Lifestyle Profile](StructureDefinition-onconova-lifestyle.md),[Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md),[Medication Administration Profile](StructureDefinition-onconova-medication-administration.md),[Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md),[Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md),[Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md),[Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md),[Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md),[Therapy Line Profile](StructureDefinition-onconova-therapy-line.md),[TNM Distant Metastases Category Profile](StructureDefinition-onconova-tnm-distant-metastases-category.md),[TNM Grade Category Profile](StructureDefinition-onconova-tnm-grade-category.md),[TNM Lymphatic Invasion Category Profile](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md),[TNM Perineural Invasion Category Profile](StructureDefinition-onconova-tnm-perineural-invasion-category.md),[TNM Primary Tumor Category Profile](StructureDefinition-onconova-tnm-primary-tumor-category.md),[TNM Regional Nodes Category Profile](StructureDefinition-onconova-tnm-regional-nodes-category.md),[TNM Residual Tumor Category Profile](StructureDefinition-onconova-tnm-residual-tumor-category.md),[TNM Serum Tumor Marker Level Category Profile](StructureDefinition-onconova-tnm-serum-tumor-marker-level-category.md),[TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md),[TNM Venous Invasion Category Profile](StructureDefinition-onconova-tnm-venous-invasion-category.md),[Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md),[Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md),[Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md)and[Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-cancer-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-cancer-patient.csv), [Excel](StructureDefinition-onconova-cancer-patient.xlsx), [Schematron](StructureDefinition-onconova-cancer-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-cancer-patient",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient",
  "version" : "0.2.0",
  "name" : "OnconovaCancerPatient",
  "title" : "Cancer Patient Profile",
  "status" : "active",
  "date" : "2025-11-24T08:55:00+00:00",
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
  "description" : "A profile representing a patient with or is receiving medical treatment for a malignant growth or tumor.\n\nIt constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) with specific extensions and constraints for the Onconova use case. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile if the `Must-Support` extensions are accounted for. \n\n**Conformance:**\n\nPatient resources representing Cancer Patients in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "o-pat-req-1",
            "severity" : "error",
            "human" : "The identifier element must contain the identifier for the Onconova logical pseudoidentifier slice.",
            "expression" : "identifier.where(type.coding.code = 'ACSN' and system = 'Onconova').exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-2",
            "severity" : "error",
            "human" : "The identifier element must contain the identifier for the clinical center's patient identifier slice.",
            "expression" : "identifier.where(type.coding.code = 'MR').exists(system.exists() and value.exists())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-3",
            "severity" : "error",
            "human" : "The gender element is required and must be provided",
            "expression" : "gender.exists()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-4",
            "severity" : "error",
            "human" : "The birthDate element is required and must be provided",
            "expression" : "birthDate.exists() and birthDate.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-5",
            "severity" : "error",
            "human" : "The vital status extension is required and must be provided.",
            "expression" : "birthDate.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-6",
            "severity" : "error",
            "human" : "The vital status extension is required and must be provided.",
            "expression" : "deceased.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-7",
            "severity" : "error",
            "human" : "If the patient is deceased, the date of death and cause of death must be provided.",
            "expression" : "deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.coding.code = '419099009' implies (deceasedDateTime.hasValue() and deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-cause-of-death').valueCodeableConcept.hasValue())",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          },
          {
            "key" : "o-pat-req-8",
            "severity" : "error",
            "human" : "If the patient vital status is unknown, the end of records must be provided.",
            "expression" : "deceasedDateTime.extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status').valueCodeableConcept.coding.code = '261665006' implies extension('http://hl7.org/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records').valueDate.hasValue()",
            "source" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient"
          }
        ]
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "min" : 1
      },
      {
        "id" : "Patient.extension:race",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "race"
      },
      {
        "id" : "Patient.extension:tribalAffiliation",
        "path" : "Patient.extension",
        "sliceName" : "tribalAffiliation",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.extension:birthsex",
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "birthsex"
      },
      {
        "id" : "Patient.extension:sex",
        "path" : "Patient.extension",
        "sliceName" : "sex",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.extension:genderIdentity",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:populate-if-known"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "genderIdentity"
      },
      {
        "id" : "Patient.extension:consentStatus",
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
        "path" : "Patient.extension",
        "sliceName" : "consentStatus",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-consent-status"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:overallSurvival",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "overallSurvival",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-overall-survival"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:dataCompletionRate",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "dataCompletionRate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-data-completion-rate"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:contributors",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.extension",
        "sliceName" : "contributors",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-data-contributors"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:endOfRecords",
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
        "path" : "Patient.extension",
        "sliceName" : "endOfRecords",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier",
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
        "path" : "Patient.identifier",
        "sliceName" : "onconovaIdentifier",
        "short" : "Onconova Logical Pseudoidentifier",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "ACSN",
              "display" : "Accession Identifier"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:onconovaIdentifier.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "Onconova"
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier",
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
        "path" : "Patient.identifier",
        "sliceName" : "clinicalIdentifier",
        "short" : "Clinical Identifier from Clinical Center",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier.type",
        "path" : "Patient.identifier.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "MR",
              "display" : "Medical Record Number"
            }
          ]
        }
      },
      {
        "id" : "Patient.identifier:clinicalIdentifier.system",
        "path" : "Patient.identifier.system",
        "short" : "Clinical center or institution assigning the identifier"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.name.extension",
        "path" : "Patient.name.extension",
        "min" : 1
      },
      {
        "id" : "Patient.name.extension:anonymizedEntry",
        "path" : "Patient.name.extension",
        "sliceName" : "anonymizedEntry",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
          }
        ]
      },
      {
        "id" : "Patient.name.extension:anonymizedEntry.value[x]",
        "path" : "Patient.name.extension.value[x]",
        "patternCode" : "masked"
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.gender",
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
        "path" : "Patient.gender"
      },
      {
        "id" : "Patient.birthDate",
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
        "path" : "Patient.birthDate",
        "short" : "Date of birth of the patient normalized to the first day of the month",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate.extension",
        "path" : "Patient.birthDate.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.birthDate.extension:age",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.birthDate.extension",
        "sliceName" : "age",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age"
            ]
          }
        ]
      },
      {
        "id" : "Patient.birthDate.extension:ageAtDiagnosis",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "MAY:ignore"
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
                "valueCode" : "MAY:persist"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://onconova.github.io/fhir/ActorDefinition/onconova-consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.birthDate.extension",
        "sliceName" : "ageAtDiagnosis",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age-at-diagnosis"
            ]
          }
        ]
      },
      {
        "id" : "Patient.deceased[x]",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/us/core/StructureDefinition/uscdi-requirement",
            "valueBoolean" : true
          },
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
        "path" : "Patient.deceased[x]",
        "short" : "Date of death of the patient, if applicable",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Patient.deceased[x].extension",
        "path" : "Patient.deceased[x].extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Patient.deceased[x].extension:vitalStatus",
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
        "path" : "Patient.deceased[x].extension",
        "sliceName" : "vitalStatus",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.deceased[x].extension:causeOfDeath",
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
        "path" : "Patient.deceased[x].extension",
        "sliceName" : "causeOfDeath",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-cause-of-death"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.photo",
        "path" : "Patient.photo",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
