# Home - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ImplementationGuide/onconova.fhir | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:Onconova |

### Introduction

**Onconova** is an open-source precision oncology platform focused on enabling advanced cancer research. The FHIR interface exposes key resources, profiles, and value sets to facilitate standardized data exchange and integration with EHRs, registries, and analytics platforms.

This implementation guide provides a comprehensive overview of the FHIR-based server interface to Onconova, supporting interoperability, data exchange, and integration with clinical and research systems. It complements the [OpenAPI specification](https://onconova.github.io/docs/latest/guide/api/specification/) and is designed for healthcare organizations, developers, and integrators seeking to leverage Onconova's oncology data.

#### Relation to mCODE

This FHIR interface is designed to align with the [**minimal Common Oncology Data Elements (mCODE)**STU4 Implementation Guide](http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode), leveraging established, community-driven standards for oncology data. The Onconova IG refines and constrains mCODE resources to ensure consistent data elements and terminology bindings. Additionally, it defines new profiles to address oncology use cases not yet covered by the mCODE IG.

### Understanding this Guide

The Onconova Implementation Guide (IG) serves as a “Software” IG that explains how to work with Onconova’s FHIR interface and outlines the additional constraints Onconova places on top of the mCODE standard.

The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

Page layouts and symbols follow the conventions described in the [official FHIR documentation](https://www.hl7.org/fhir/formats.html). When you open a profile page, you’ll notice several different views:

* Differential Table: This view highlights the differences between the current profile and its immediate parent (which might be a base FHIR resource, a US Core profile, or another profile defined within this guide).
* Snapshot Table: This view shows the complete profile, listing every element in its fully expanded form.

If you encounter any inconsistencies between the rendering of pages in this IG and the corresponding FHIR artifacts, treat the FHIR artifacts as the authoritative source.

### Safety Considerations

This Implementation Guide specifies the data elements, resources, formats, and exchange methods used to share research healthcare information. Because clinical safety is paramount, additional safety guidance for the many possible implementations can be found at the HL7 FHIR safety page: https://www.hl7.org/FHIR/safety.html.

While the guide includes provisions that support adherence to data‑protection and security regulations, merely using the specification does not ensure compliance. Compliance must be achieved through appropriate safeguards applied during implementation projects and in routine operations.

### Governance

The Onconova FHIR IG is managed by the [Onconova development group](https://github.com/onconova/fhir/graphs/contributors).

### Credits

The authors thank the mCODE Working Group for their diligent effort and solid contributions, which have been essential to the project's progress.

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR ![](icon-fhir-16.png)® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

This publication includes IP covered under the following statements.

* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.2.0/CodeSystem-v3-ucum.html): [OnconovaLifestyle](StructureDefinition-onconova-lifestyle.md) and [OnconovaTumorMutationalBurden](StructureDefinition-onconova-tumor-mutational-burden.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.2.0/CodeSystem-v3-loinc.html): [AminoAcidChangeTypes](ValueSet-onconova-vs-amino-acid-change-types.md), [OnconovaCancerStage](StructureDefinition-onconova-cancer-stage.md)...Show 13 more,[OnconovaECOGPerformanceStatus](StructureDefinition-onconova-ecog-performance-status.md),[OnconovaGenomicVariant](StructureDefinition-onconova-genomic-variant.md),[OnconovaImagingDiseaseStatus](StructureDefinition-onconova-imaging-disease-status.md),[OnconovaKarnofskyPerformanceStatus](StructureDefinition-onconova-karnofsky-performance-status.md),[OnconovaLifestyle](StructureDefinition-onconova-lifestyle.md),[OnconovaMicrosatelliteInstability](StructureDefinition-onconova-microsatellite-instability.md),[OnconovaTumorBoardRecommendations](ValueSet-onconova-vs-tumor-board-recommendations.md),[OnconovaTumorBoardReview](StructureDefinition-onconova-tumor-board-review.md),[OnconovaTumorMarker](StructureDefinition-onconova-tumor-marker.md),[OnconovaTumorMutationalBurden](StructureDefinition-onconova-tumor-mutational-burden.md),[TumorMarkerAnalyte](StructureDefinition-onconova-ext-tumor-marker-analyte.md),[TumorMarkerAnalytes](ValueSet-onconova-vs-tumor-marker-analytes.md)and[TumorMarkerTests](ValueSet-onconova-vs-tumor-marker-tests.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AdverseEventMitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md), [AdverseEventMitigationDrugs](ValueSet-onconova-vs-adverse-event-mitigation-drugs.md)...Show 52 more,[AdverseEventMitigationManagements](ValueSet-onconova-vs-adverse-event-mitigation-managements.md),[AdverseEventMitigationProcedures](ValueSet-onconova-vs-adverse-event-mitigation-procedures.md),[AdverseEventMitigationTreatmentAdjustments](ValueSet-onconova-vs-adverse-event-mitigation-treatment-adjustments.md),[CancerImagingMethods](ValueSet-onconova-vs-cancer-imaging-methods.md),[CancerPatientCauseOfDeath](StructureDefinition-onconova-ext-cancer-patient-cause-of-death.md),[CancerPatientVitalStatus](StructureDefinition-onconova-ext-cancer-patient-vital-status.md),[CausesOfDeath](ValueSet-onconova-vs-causes-of-death.md),[ExpectedDrugEffects](ValueSet-onconova-vs-expected-drug-effects.md),[HomologousRecombinationDeficiencyInterpretation](StructureDefinition-onconova-ext-homologous-recombination-deficiency-interpretation.md),[HomologousRecombinationDeficiencyInterpretations](ValueSet-onconova-vs-homologous-recombination-deficiency-interpretations.md),[MolecularTumorBoardTherapeuticRecommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md),[ObservationBodySites](ValueSet-onconova-vs-observation-bodysites.md),[OnconovaCancerFamilyMemberHistory](StructureDefinition-onconova-cancer-family-member-history.md),[OnconovaComorbidities](StructureDefinition-onconova-comorbidities.md),[OnconovaImagingDiseaseStatus](StructureDefinition-onconova-imaging-disease-status.md),[OnconovaLifestyle](StructureDefinition-onconova-lifestyle.md),[OnconovaLymphomaStage](StructureDefinition-onconova-lymphoma-stage.md),[OnconovaMedicationAdministration](StructureDefinition-onconova-medication-administration.md),[OnconovaMolecularTumorBoardReview](StructureDefinition-onconova-molecular-tumor-board-review.md),[OnconovaPrimaryCancerCondition](StructureDefinition-onconova-primary-cancer-condition.md),[OnconovaRadiotherapyCourseSummary](StructureDefinition-onconova-radiotherapy-summary.md),[OnconovaSecondaryCancerCondition](StructureDefinition-onconova-secondary-cancer-condition.md),[OnconovaSurgicalProcedure](StructureDefinition-onconova-surgical-procedure.md),[OnconovaTNMDistantMetastasesCategory](StructureDefinition-onconova-tnm-distant-metastases-category.md),[OnconovaTNMGradeCategory](StructureDefinition-onconova-tnm-grade-category.md),[OnconovaTNMLymphaticInvasionCategory](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md),[OnconovaTNMPerineuralInvasionCategory](StructureDefinition-onconova-tnm-perineural-invasion-category.md),[OnconovaTNMPrimaryTumorCategory](StructureDefinition-onconova-tnm-primary-tumor-category.md),[OnconovaTNMRegionalNodesCategory](StructureDefinition-onconova-tnm-regional-nodes-category.md),[OnconovaTNMResidualTumorCategory](StructureDefinition-onconova-tnm-residual-tumor-category.md),[OnconovaTNMSerumTumorMarkerLevelCategory](StructureDefinition-onconova-tnm-serum-tumor-marker-level-category.md),[OnconovaTNMVenousInvasionCategory](StructureDefinition-onconova-tnm-venous-invasion-category.md),[OnconovaTumorBoardRecommendations](ValueSet-onconova-vs-tumor-board-recommendations.md),[OnconovaTumorBoardReview](StructureDefinition-onconova-tumor-board-review.md),[PrimaryCancerRecurrenceType](StructureDefinition-onconova-ext-primary-cancer-recurrence-type.md),[RecreationalDrugs](ValueSet-onconova-vs-recreational-drugs.md),[RecurrenceTypes](ValueSet-onconova-vs-recurrence-types.md),[SmokingStatus](ValueSet-onconova-vs-smoking-status.md),[TNMDistantMetastasisCategories](ValueSet-onconova-vs-tnm-distant-metastasis-categories.md),[TNMGradeCategories](ValueSet-onconova-vs-tnm-grade-categories.md),[TNMGradeCategoryMethods](ValueSet-onconova-vs-tnm-grade-category-methods.md),[TNMLymphaticInvasionCategories](ValueSet-onconova-tnm-lymphatic-invasion-categories.md),[TNMPerineuralInvasionCategories](ValueSet-onconova-tnm-perineural-invasion-categories.md),[TNMPrimaryTumorCategories](ValueSet-onconova-vs-tnm-primary-tumor-categories.md),[TNMRegionalNodesCategories](ValueSet-onconova-vs-tnm-regional-nodes-categories.md),[TNMResidualTumorCategories](ValueSet-onconova-tnm-residual-tumor-categories.md),[TNMSerumTumorMarkerLevelCategories](ValueSet-onconova-vs-tnm-serum-tumor-marker-level-categories.md),[TNMVenousInvasionCategories](ValueSet-onconova-vs-tnm-venous-invasion-categories.md),[TherapyLineIntent](StructureDefinition-onconova-ext-therapy-line-intent.md),[TreatmentIntents](ValueSet-onconova-vs-treatment-intents.md),[TreatmentTerminationReasons](ValueSet-onconova-vs-treatment-termination-reasons.md)and[VitalStatus](ValueSet-onconova-vs-vital-status.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.0.0/CodeSystem-observation-category.html): [OnconovaAneuploidScore](StructureDefinition-onconova-aneuploid-score.md), [OnconovaCancerRiskAssessment](StructureDefinition-onconova-cancer-risk-assessment.md)...Show 8 more,[OnconovaGenomicVariant](StructureDefinition-onconova-genomic-variant.md),[OnconovaHomologousRecombinationDeficiency](StructureDefinition-onconova-homologous-recombination-deficiency.md),[OnconovaImagingDiseaseStatus](StructureDefinition-onconova-imaging-disease-status.md),[OnconovaLossOfHeterozygosity](StructureDefinition-onconova-loss-of-heterozygosity.md),[OnconovaMicrosatelliteInstability](StructureDefinition-onconova-microsatellite-instability.md),[OnconovaTumorMarker](StructureDefinition-onconova-tumor-marker.md),[OnconovaTumorMutationalBurden](StructureDefinition-onconova-tumor-mutational-burden.md)and[OnconovaTumorNeoantigenBurden](StructureDefinition-onconova-tumor-neoantigen-burden.md)
* [identifierType](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html): [OnconovaCancerPatient](StructureDefinition-onconova-cancer-patient.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ObservationInterpretation.html): [TumorMutationalBurdenStatus](StructureDefinition-onconova-ext-tumor-mutational-burden-status.md) and [TumorMutationalBurdenStatusInterpretations](ValueSet-onconova-vs-tumor-mutational-burden-status-interpretations.md)


### Dependency Table










-------

**Onconova is an open source project and welcomes all contributors. The source code for this IG is maintained in the[Onconova Github](https://github.com/onconova/fhir). All of the profiling work is done using FHIR Shorthand and SUSHI. All content is subject to change.**



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "onconova.fhir",
  "url" : "http://onconova.github.io/fhir/ImplementationGuide/onconova.fhir",
  "version" : "0.2.0",
  "name" : "Onconova",
  "title" : "Onconova Implementation Guide",
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
  "description" : "Onconova is an open-source data platform aiming to enable reliable, structured data collection and analysis in precision oncology. Our goal is to support clinical research and development through interoperable, accessible software.",
  "packageId" : "onconova.fhir",
  "license" : "MIT",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_uv_genomics_reporting",
      "uri" : "http://hl7.org/fhir/uv/genomics-reporting/ImplementationGuide/hl7.fhir.uv.genomics-reporting",
      "packageId" : "hl7.fhir.uv.genomics-reporting",
      "version" : "2.0.0"
    },
    {
      "id" : "hl7fhiruscore",
      "uri" : "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core",
      "packageId" : "hl7.fhir.us.core",
      "version" : "6.1.0"
    },
    {
      "id" : "mcode",
      "uri" : "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode",
      "packageId" : "hl7.fhir.us.mcode",
      "version" : "4.0.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "no-ig-database"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludexml"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludettl"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "wantGen-ttl"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "wantGen-ttl-html"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "wantGen-xml"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "wantGen-xml-html"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://onconova.github.io/fhir/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "no-ig-database"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludexml"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludettl"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "wantGen-ttl"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "wantGen-ttl-html"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "wantGen-xml"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "wantGen-xml-html"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://onconova.github.io/fhir/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adjunctive-therapy-roles"
        },
        "name" : "Adjunctive Therapy Roles Value Set",
        "description" : "Codes representing roles for adjunctive therapy in oncology.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-adverse-event-ctc-grade"
        },
        "name" : "Adverse Event CTCAE Grade",
        "description" : "The grade of the adverse event as defined by the Common Terminology Criteria for Adverse Events (CTCAE).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-adverse-event-mitigation"
        },
        "name" : "Adverse Event Mitigation",
        "description" : "Details about an action taken to mitigate or manage the adverse event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adverse-event-mitigation-categories"
        },
        "name" : "Adverse Event Mitigation Categories Value Set",
        "description" : "Categories of actions taken to mitigate or manage adverse events in oncology.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adverse-event-mitigation-drugs"
        },
        "name" : "Adverse Event Mitigation Drugs Value Set",
        "description" : "Drugs or medication categories used in the mitigation process of an adverse event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adverse-event-mitigation-managements"
        },
        "name" : "Adverse Event Mitigation Managements Value Set",
        "description" : "Classification of actions to mitigate adverse events affecting a patient's health.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adverse-event-mitigation-procedures"
        },
        "name" : "Adverse Event Mitigation Procedures Value Set",
        "description" : "Procedures undertaken to mitigate the impact of an adverse event on a patient's health.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-adverse-event-mitigation-treatment-adjustments"
        },
        "name" : "Adverse Event Mitigation Treatment Adjustments Value Set",
        "description" : "Adjustments made to a patient's treatment plan in response to an adverse event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-adverse-event"
        },
        "name" : "Adverse Event Profile",
        "description" : "A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken.\n\nThe profile constrains the base FHIR `AdverseEvent` resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients.\n\n**Conformance:**\n\nAdverseEvent resources representing an adverse event caused by a cancer therapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-adverse-event-resolved-date"
        },
        "name" : "Adverse Event Resolved Date",
        "description" : "The date when the adverse event was resolved (if applicable).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-amino-acid-change-types"
        },
        "name" : "Amino Acid Change Type Value Set",
        "description" : "Amino acid change types due to a genomic variant. It constraints and expands the original [LOINC Answer List LL380-7](https://loinc.org/LL380-7/) to enforce Onconova-compatible codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-aneuploid-score"
        },
        "name" : "Aneuploid Score Profile",
        "description" : "A profile representing aneuploid score for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing an aneuploid score obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-antineoplastic-agents"
        },
        "name" : "Antineoplastic Agents Value Set",
        "description" : "Drugs and biological agents used in the treatment of neoplastic diseases.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-cancer-family-member-history"
        },
        "name" : "Cancer Family Member History Profile",
        "description" : "A profile recording of a patient's family member's history of cancer.\n\nThis profile is based on the core FHIR `FamilyMemberHistory` resource rather than the mCODE  [HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer) to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography.\n\n**Conformance:**\n\nFamilyMemberHistory resources representing a history of (primary or metastatic) cancer in a patient's family member in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-cancer-imaging-methods"
        },
        "name" : "Cancer Imaging Methods Value Set",
        "description" : "Imaging methods used in cancer diagnosis and monitoring.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-age"
        },
        "name" : "Cancer Patient Age",
        "description" : "The approximate age of the patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-age-at-diagnosis"
        },
        "name" : "Cancer Patient Age at Diagnosis",
        "description" : "The approximate age of the patient at the time of diagnosis of the disease.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-cause-of-death"
        },
        "name" : "Cancer Patient Cause of Death",
        "description" : "The cause of death for the patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-consent-status"
        },
        "name" : "Cancer Patient Consent status",
        "description" : "The status of whether the patient has given or revoked consent for research use.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-data-completion-rate"
        },
        "name" : "Cancer Patient Data Completion Rate",
        "description" : "The percentage of data elements categories that have been completed for a patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-data-contributors"
        },
        "name" : "Cancer Patient Data Contributors",
        "description" : "The individuals or organizations that contributed to the patient's case data collection.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-end-of-records"
        },
        "name" : "Cancer Patient End of Records",
        "description" : "Indicates the last known record date of a patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-overall-survival"
        },
        "name" : "Cancer Patient Overall Survival",
        "description" : "The duration of time from either the date of diagnosis or the start of treatment for a disease, such as cancer, that patients diagnosed with the disease are still alive. In a clinical trial, measuring the overall survival is one way to see how well a new treatment works.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-cancer-patient"
        },
        "name" : "Cancer Patient Profile",
        "description" : "A profile representing a patient with or is receiving medical treatment for a malignant growth or tumor.\n\nIt constrains the mCODE [CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient) with specific extensions and constraints for the Onconova use case. Any `Patient` resource complying with the US Core `Patient` or mCODE `CancerPatient` profiles will also comply with this profile if the `Must-Support` extensions are accounted for. \n\n**Conformance:**\n\nPatient resources representing Cancer Patients in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-patient-vital-status"
        },
        "name" : "Cancer Patient Vital status",
        "description" : "The status of whether the patient is alive or deceased or unknown.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-cancer-risk-assessment-methods"
        },
        "name" : "Cancer Risk Assessment Methods Value Set",
        "description" : "A value set containing codes for various cancer risk assessment methods.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-cancer-risk-assessment"
        },
        "name" : "Cancer Risk Assessment Profile",
        "description" : "A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score.\n\nIt constraints the mCODE [CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment) and expands the valuesets for cancer risk assessment methods and values.\n\n**Conformance:**\n\nObservation resources representing a cancer-related risk assessment in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-cancer-stage-breslow-depth"
        },
        "name" : "Cancer Stage Breslow Depth",
        "description" : "The actual measured Breslow depth as a quantity",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-cancer-stage"
        },
        "name" : "Cancer Stage Profile",
        "description" : "A profile representing the cancer stage for a cancer patient. \n\nIt constrains the mCODE [CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a cancer staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-causes-of-death"
        },
        "name" : "Cause of Death Value Set",
        "description" : "The causes of death that are relevant for a cancer patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-clinical-relevances"
        },
        "name" : "Clinical Relevance Value Set",
        "description" : "Categorizations of the clinical relevance of a genomic variant",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-dna-change-types"
        },
        "name" : "Coding DNA Change Types Value Set",
        "description" : "Coding DNA change types due to a genomic variant. It constraints and expands the original [LOINC Answer List LL380-7](https://loinc.org/LL380-7/) to enforce Onconova-compatible codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-comorbidities"
        },
        "name" : "Comorbidities Profile",
        "description" : "A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes.\n\nThe profile constrains the mCODE [Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities) to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. \n\n**Conformance:**\n\nObservation resources representing a generic or panel comorbidities assessment in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/onconova-cs-comorbidity-panels"
        },
        "name" : "Comorbidity Panels Code System",
        "description" : "A code system for comorbidity panels relevant to cancer patients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-comorbidity-panels"
        },
        "name" : "Comorbidity Panels Value Set",
        "description" : "A collection of comorbidity panels relevant to cancer patients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/onconova-cs-consent-status"
        },
        "name" : "Consent Status Code System",
        "description" : "A code system for consent status relevant to Onconova patients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-consent-status"
        },
        "name" : "Consent Status Value Set",
        "description" : "The consent status of a patient for further use of data in research.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ActorDefinition"
          }
        ],
        "reference" : {
          "reference" : "ActorDefinition/onconova-consumer"
        },
        "name" : "Consumer (Onconova)",
        "description" : "An actor representing a data consumer that interacts with the Onconova FHIR REST server to retrieve and read patient case data.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ActorDefinition"
          }
        ],
        "reference" : {
          "reference" : "ActorDefinition/onconova-creator"
        },
        "name" : "Creator (Onconova)",
        "description" : "An actor representing a data creator that interacts with the Onconova FHIR REST server to create and update patient case data.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-ctc-adverse-events"
        },
        "name" : "CTC Adverse Events Value Set",
        "description" : "Adverse events classified according to the Common Terminology Criteria for Adverse Events (CTCAE)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ecog-performance-status"
        },
        "name" : "ECOG Performance Status Profile",
        "description" : "A profile representing the (Eastern Cooperative Oncology Group) ECOG performance status score for a cancer patient.\n\nAdds minimal constraints to the mCODE [`ECOGPerformanceStatus` profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status) to account for Onconova specifics.\n\n**Conformance:**\n\nObservation resources representing an ECOG performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-expected-drug-effects"
        },
        "name" : "Expected Drug Effects Value Set",
        "description" : "Collection of expected effects when a drug is administered.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-exposure-agents"
        },
        "name" : "Exposure Agents Value Set",
        "description" : "Agents to which a patient may have been exposed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-family-history-member-cancer-morphology"
        },
        "name" : "Family Member History Cancer Morphology",
        "description" : "The morphology of a historical cancer associated to a family member of a patient, represented by an ICD-O-3 code.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-family-history-member-cancer-topography"
        },
        "name" : "Family Member History Cancer Topography",
        "description" : "The topography of a historical cancer associated to a family member of a patient, represented by an ICD-O-3 code.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-genomic-variant-assessment-date"
        },
        "name" : "Genomic Variant Assessment Date",
        "description" : "Date at which the genomic variant was assessed and/or reported.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-genomic-variant"
        },
        "name" : "Genomic Variant Profile",
        "description" : "A profile representing a genomic variant identified for a cancer patient. \n\nThis profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a genomic variant in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-histological-differentiation"
        },
        "name" : "Histological Differentiation",
        "description" : "The histological differentiation of the tumor.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-homologous-recombination-deficiency-interpretation"
        },
        "name" : "Homologous Recombination Deficiency Interpretation",
        "description" : "The categorical classification of the HRD status interpreted from its value.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-homologous-recombination-deficiency-interpretations"
        },
        "name" : "Homologous Recombination Deficiency Interpretation Value Set",
        "description" : "The categorical classifications of the HRD status interpreted from its value..",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-homologous-recombination-deficiency"
        },
        "name" : "Homologous Recombination Deficiency Profile",
        "description" : "A profile representing homologous recombination deficiency for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a homologous recombination deficiency obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-icd-10-conditions"
        },
        "name" : "ICD-10 Codes Value Set",
        "description" : "All possible ICD-10 codes for conditions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-icdo3-differentiations"
        },
        "name" : "ICD-O-3 Differentiations Value Set",
        "description" : "The subset of ICD-O-3 concepts dedicated for describing morphology differentiations.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-icdo3-morphology-behaviors"
        },
        "name" : "ICD-O-3 Morphology Behavior Value Set",
        "description" : "The subset of ICD-O-3 concepts dedicated for describing morphology behavior.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-icdo3-topographies"
        },
        "name" : "ICD-O-3 Topographies Value Set",
        "description" : "The subset of ICD-O-3 concepts dedicated for describing morphology topographies.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-imaging-disease-status"
        },
        "name" : "Imaging Disease Status Profile",
        "description" : "A profile representing the imaging-based disease status of a cancer patient.\n\nIt constrains the mCODE [CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status) to restrict it to imaging-based monitoring evaluated based on RECIST criteria.\n\n**Conformance:**\n\nObservation resources representing a disease status obtained through imaging techniques in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-karnofsky-performance-status"
        },
        "name" : "Karnofsky Performance Status Profile",
        "description" : "A profile representing the Karnofsky performance status score for a cancer patient.\n\nAdds minimal constraints to the mCODE [`KarnofskyPerformanceStatus` profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status) to account for Onconova specifics.\n\n**Conformance:**\n\nObservation resources representing a Karnofsky performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-lifestyle"
        },
        "name" : "Lifestyle Profile",
        "description" : "A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). \n\nIt directly profiles the base FHIR `Observation` resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. \n\n**Conformance:**\n\nObservation resources representing a summary of a patient's lifestyle in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-loss-of-heterozygosity"
        },
        "name" : "Loss of Heterozygosity Profile",
        "description" : "A profile representing loss of heterozygosity for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a loss of heterozygosity obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-lymphoma-stage"
        },
        "name" : "Lymphoma Stage",
        "description" : "Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotswold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used.\n\n**Conformance:**\n\nObservation resources representing a lymphoma staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-medication-administration-adjunctive-role"
        },
        "name" : "Medication Administration Adjunctive Role",
        "description" : "Indicates the role of this medication administration in the context of the overall treatment plan.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-medication-administration-combined-with"
        },
        "name" : "Medication Administration Combined With",
        "description" : "Indicates which medication administrations were given in combination with the current medication administration.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-medication-administration-cycles"
        },
        "name" : "Medication Administration Cycles",
        "description" : "Indicates the total number of cycles for this medication administration.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-medication-administration-is-primary-therapy"
        },
        "name" : "Medication Administration Is Primary Therapy",
        "description" : "Indicates whether this medication administration is the primary therapy within a therapy line.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-medication-administration"
        },
        "name" : "Medication Administration Profile",
        "description" : "A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. \n\nThis profile extends the base mCODE [CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration) to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies.\n\nSince Onocnova treats systemic therapies involving multiple antineoplastic agents administered together or in sequence as part of a single treatment plan, this profile allows for capturing such relationships between medication administrations using the `MedicationAdministration.extension[combinedWith]` extension slices.\n\n**Conformance:**\n\nMedicationAdministration resources representing a systemic therapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-microsatellite-instability"
        },
        "name" : "Microsatellite Instability Profile",
        "description" : "A profile representing microsatellite instability for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a microsatellite instability obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-molecular-tumor-board-cup-characterization"
        },
        "name" : "Molecular Tumor Board CUP Characterization",
        "description" : "A characterization of the tumor board review focused on cancer of unknown primary (CUP) origin.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-molecular-tumor-board-molecular-comparison"
        },
        "name" : "Molecular Tumor Board Molecular Comparison",
        "description" : "A comparison of molecular findings discussed during the molecular tumor board review.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-molecular-tumor-board-review"
        },
        "name" : "Molecular Tumor Board Review Profile",
        "description" : "A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the `OnconovaTumorBoardReview` profile to specify that the review is focused on molecular diagnostics and recommendations.\n\n**Conformance:**\n\nProcedure resources representing a molecular tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-molecular-tumor-board-therapeutic-recommendation"
        },
        "name" : "Molecular Tumor Board Therapeutic Recommendation",
        "description" : "A therapeutic recommendation or follow-up action resulting from a molecular tumor board review.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-observation-bodysites"
        },
        "name" : "Observation Body Sites Value Set",
        "description" : "Bodysites related to an observation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/onconova-capability-statement"
        },
        "name" : "Onconova FHIR REST Server Capability Statement",
        "description" : "Supports the retrieval of the [mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle) containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-primary-cancer-condition"
        },
        "name" : "Primary Cancer Condition Profile",
        "description" : "A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.\n\nIt constrains the mCODE [PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. \n\nLocal and regional recurrences are indicated using the `clinicalStatus` and `clinicalStatus.extension` to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional).\n\n**Conformance:**\n\nCondition resources representing a primary or recurrent neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-primary-cancer-recurrence-of"
        },
        "name" : "Primary Cancer Recurrence Of",
        "description" : "Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-primary-cancer-recurrence-type"
        },
        "name" : "Primary Cancer Recurrence Type",
        "description" : "Indicates the type of recurrence for the condition (local or regional).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-radiotherapy-summary"
        },
        "name" : "Radiotherapy Summary Profile",
        "description" : "A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element.\n\nThis profile extends the base mCODE [RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary) to include specific constraints and requirements for Onconova.\n\n**Conformance:**\n\nProcedure resources representing a radiotherapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-recreational-drugs"
        },
        "name" : "Recreational Drugs Value Set",
        "description" : "Substances that people use to alter their mental state, often for pleasure or leisure, with effects ranging from relaxation and euphoria to hallucinations and altered perceptions.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-recurrence-types"
        },
        "name" : "Recurrence Types Value Set",
        "description" : "A value set representing the types of cancer recurrence, specifically local and regional recurrences.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-risk-assessment-score"
        },
        "name" : "Risk Assessment Score",
        "description" : "The numerical score of the risk assessment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-cancer-risk-assessment-values"
        },
        "name" : "Risk Assessment Values Value Set",
        "description" : "A non-exhaustive value set containing codes that result from risk assessments, i.e., the risk level of the cancer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-secondary-cancer-condition"
        },
        "name" : "Secondary Cancer Condition Profile",
        "description" : "A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).\n\nIt constrains the mCODE [SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition) to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.\n\n**Conformance:**\n\nCondition resources representing a metastatic neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-smoking-status"
        },
        "name" : "Smoking status Value Set",
        "description" : "Smoking status of a patient",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-surgical-procedure"
        },
        "name" : "Surgical Procedure Profile",
        "description" : "A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. \n\nIt extends the base mCODE [CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure) to include specific constraints and requirements for Onconova.\n\n**Conformance:**\n\nProcedure resources representing a surgery in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-surgical-procedures"
        },
        "name" : "Surgical Procedures Value Set",
        "description" : "Set of surgical procedures relevant to cancer treatment in Onconova.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-intent"
        },
        "name" : "Therapy Line Intent",
        "description" : "The intent of the therapy line, such as curative or palliative.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-number"
        },
        "name" : "Therapy Line Number",
        "description" : "The number representing the sequence of the therapy line in the overall treatment regimen.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-period"
        },
        "name" : "Therapy Line Period",
        "description" : "The period during which the therapy line was performed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-therapy-line"
        },
        "name" : "Therapy Line Profile",
        "description" : "A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. \n\nDue to its abstract conceptual nature, it is based on a FHIR `List` to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually.\n\n**Conformance:**\n\nList resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-progression-date"
        },
        "name" : "Therapy Line Progression Date",
        "description" : "The date when disease progression was observed during or after the therapy line.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-progression-free-survival"
        },
        "name" : "Therapy Line Progression-Free Survival",
        "description" : "The progression-free survival duration for the therapy line.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-therapy-line-reference"
        },
        "name" : "Therapy Line Reference",
        "description" : "A reference to the therapy line associated with this treatment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-distant-metastases-category"
        },
        "name" : "TNM Distant Metastases Category Profile",
        "description" : "A profile representing the TNM distant metastases category for a cancer patient. \n\nThis profile extends the base mCODE [TNMDistantMetastasesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category) to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging distant metastases parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-distant-metastasis-categories"
        },
        "name" : "TNM Distant Metastasis Categories Value Set",
        "description" : "TNM Distant Metastasis Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-grade-categories"
        },
        "name" : "TNM Grade Categories Value Set",
        "description" : "TNM Grade Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-grade-category-methods"
        },
        "name" : "TNM Grade Category Methods Value Set",
        "description" : "TNM Grade Category Methods Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-grade-category"
        },
        "name" : "TNM Grade Category Profile",
        "description" : "A profile representing the TNM grade category for a cancer patient. \n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging grade category parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-tnm-lymphatic-invasion-categories"
        },
        "name" : "TNM Lymphatic Invasion Categories Value Set",
        "description" : "TNM Lymphatic Invasion Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-lymphatic-invasion-category"
        },
        "name" : "TNM Lymphatic Invasion Category Profile",
        "description" : "A profile representing the TNM lymphatic invasion category for a cancer patient. \n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging lymphatic invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-tnm-perineural-invasion-categories"
        },
        "name" : "TNM Perineural Invasion Categories Value Set",
        "description" : "TNM Perineural Invasion Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-perineural-invasion-category"
        },
        "name" : "TNM Perineural Invasion Category Profile",
        "description" : "A profile representing the TNM perineural invasion category for a cancer patient. \n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging perineural invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-primary-tumor-categories"
        },
        "name" : "TNM Primary Tumor Categories Value Set",
        "description" : "TNM Primary Tumor Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-primary-tumor-category"
        },
        "name" : "TNM Primary Tumor Category Profile",
        "description" : "A profile representing the TNM primary tumor category for a cancer patient. \n\nThis profile extends the base mCODE [TNMPrimaryTumorCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category) to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging primary tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-regional-nodes-categories"
        },
        "name" : "TNM Regional Nodes Categories Value Set",
        "description" : "TNM Regional Nodes Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-regional-nodes-category"
        },
        "name" : "TNM Regional Nodes Category Profile",
        "description" : "A profile representing the TNM regional nodes category for a cancer patient. \n\nThis profile extends the base mCODE [TNMRegionalNodesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category) to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging regional nodes parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-tnm-residual-tumor-categories"
        },
        "name" : "TNM Residual Tumor Categories Value Set",
        "description" : "TNM Residual Tumor Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-residual-tumor-category"
        },
        "name" : "TNM Residual Tumor Category Profile",
        "description" : "A profile representing the TNM residual tumor category for a cancer patient.\n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging residual tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-serum-tumor-marker-level-categories"
        },
        "name" : "TNM Serum Tumor Marker Level Categories Value Set",
        "description" : "TNM Serum Tumor Marker Level Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-serum-tumor-marker-level-category"
        },
        "name" : "TNM Serum Tumor Marker Level Category Profile",
        "description" : "A profile representing the TNM serum tumor marker level category for a cancer patient. \n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging serum tumor marker level parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-stage-group"
        },
        "name" : "TNM Stage Group",
        "description" : "A profile representing the TNM stage group for a cancer patient. \n\nIt extends the base mCODE [TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group) to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a cancer TNM staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tnm-venous-invasion-categories"
        },
        "name" : "TNM Venous Invasion Categories Value Set",
        "description" : "TNM Venous Invasion Categories Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tnm-venous-invasion-category"
        },
        "name" : "TNM Venous Invasion Category Profile",
        "description" : "A profile representing the TNM venous invasion category for a cancer patient. \n\nThis profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the `TNMStageGroup` profile under `Obseration.contained`.\n\n**Conformance:**\n\nObservation resources representing a TNM staging venous invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/onconova-cs-tbd"
        },
        "name" : "To Be Determined Codes",
        "description" : "A code system for codes that are yet to be determined.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-treatment-intents"
        },
        "name" : "Treatment Intents Value Set",
        "description" : "A set of intents for giving a treatment to a cancer patient",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-treatment-response-recist-is-interpreted"
        },
        "name" : "Treatment Response RECIST Is Interpreted",
        "description" : "Indicates that whether the RECIST was interpreted from a radiology report rather than extracted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-treatment-termination-reasons"
        },
        "name" : "Treatment Termination Reasons Value Set",
        "description" : "Reasons for terminating a treatment in oncology.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tumor-board-recommendations"
        },
        "name" : "Tumor Board Recommendations Value Set",
        "description" : "Recommendations that may be made by a tumor board for a cancer patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tumor-board-review"
        },
        "name" : "Tumor Board Review Profile",
        "description" : "A profile representing a tumor board review for a cancer patient.\n\nThis profile extends the base FHIR `Procedure` resource since there is no equivalent mCODE profile that covers the use case. \n\n**Conformance:**\n\nProcedure resources representing a tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-tumor-board-specialization"
        },
        "name" : "Tumor Board Specialization",
        "description" : "The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-tumor-marker-analyte"
        },
        "name" : "Tumor Marker Analyte",
        "description" : "The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tumor-marker-analytes"
        },
        "name" : "Tumor Marker Analytes Value Set",
        "description" : "Analytes considered tumor markers.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tumor-marker"
        },
        "name" : "Tumor Marker Profile",
        "description" : "A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. \n\nThis profile extends the base mCODE [TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test) to include specific constraints and requirements for Onconova.\n\nIf relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level).\n\n**Conformance:**\n\nObservation resources representing a tumor marker in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tumor-marker-tests"
        },
        "name" : "Tumor Marker Tests",
        "description" : "ValueSet containing LOINC and NCI Thesaurus codes for tumor marker laboratory tests and measurements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tumor-mutational-burden"
        },
        "name" : "Tumor Mutational Burden Profile",
        "description" : "A profile representing tumor mutational burden for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a tumor mutational burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-ext-tumor-mutational-burden-status"
        },
        "name" : "Tumor Mutational Burden Status",
        "description" : "The categorical classification of the TMB status interpreted from its value.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-tumor-mutational-burden-status-interpretations"
        },
        "name" : "Tumor Mutational Burden Status Interpretation Value Set",
        "description" : "The categorical classifications of the TMB status interpreted from its value..",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/onconova-tumor-neoantigen-burden"
        },
        "name" : "Tumor Neoantigen Burden Profile",
        "description" : "A profile representing tumor neoantigen burden for a cancer patient. \n\nThis profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.\n\n**Conformance:**\n\nObservation resources representing a tumor neoantigen burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/onconova-vs-vital-status"
        },
        "name" : "Vital Status Value Set",
        "description" : "The vital status of a patient",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "extensions.html"
            }
          ],
          "nameUrl" : "extensions.html",
          "title" : "Extensions",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "profiles.html"
            }
          ],
          "nameUrl" : "profiles.html",
          "title" : "Profiles",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "terminology.html"
            }
          ],
          "nameUrl" : "terminology.html",
          "title" : "Terminology",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
