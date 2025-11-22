# Artifacts Summary - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Onconova FHIR REST Server Capability Statement](CapabilityStatement-onconova-capability-statement.md) | Supports the retrieval of the[mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle)containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) | A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken.The profile constrains the base FHIR`AdverseEvent`resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients. |
| [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md) | A profile representing aneuploid score for a cancer patient.This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. |
| [Cancer Family Member History](StructureDefinition-onconova-cancer-family-member-history.md) | A profile recording of a family member's history of cancer.This profile is based on the core FHIR`FamilyMemberHistory`resource rather than the mCODE[HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer)to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography. |
| [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md) | A profile representing a cancer patient with specific extensions and constraints for the Onconova use case.It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile. |
| [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md) | A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score.It constraints the mCODE[CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment)and expands the valuesets for cancer risk assessment methods and values. |
| [Cancer Stage](StructureDefinition-onconova-cancer-stage.md) | A profile representing the cancer stage for a cancer patient.It constrains the mCODE[CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage)to include specific constraints and extensions relevant to Onconova. |
| [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md) | A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes.The profile constrains the mCODE[Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities)to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. |
| [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md) | A profile representing ECOG performance status score for a cancer patient.Adds minimal constraints to the mCODE[`ECOGPerformanceStatus`profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status)to account for Onconova specifics. |
| [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md) | A profile representing a genomic variant identified for a cancer patient.This profile extends the base mCODE[GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant)(which in turn profiles the Genomics Reporting[Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova. |
| [Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md) | A profile representing homologous recombination deficiency for a cancer patient.This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. |
| [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md) | A profile representing the imaging-based disease status of a cancer patient.It constrains the mCODE[CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status)to restrict it to imaging-based monitoring evaluated based on RECIST criteria. |
| [Karnofsky Performance Status Profile](StructureDefinition-onconova-Karnofsky-performance-status.md) | A profile representing the Karnofsky performance status score for a cancer patient.Adds minimal constraints to the mCODE[KarnofskyPerformanceStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status)to account for Onconova specifics. |
| [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md) | A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.).It directly profiles the base FHIR`Observation`resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. |
| [Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md) | A profile representing loss of heterozygosity for a cancer patient.This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. |
| [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md) | A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage.This profile extends the base mCODE[CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration)to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies. |
| [Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md) | A profile representing microsatellite instability for a cancer patient.This profile extends the GenomicsReporting IG[MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi)to include specific constraints and extensions relevant to Onconova. |
| [Molecular Tumor Board Review](StructureDefinition-onconova-molecular-tumor-board-review.md) | A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the`OnconovaTumorBoardReview`profile to specify that the review is focused on molecular diagnostics and recommendations. |
| [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) | A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from:[NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.It constrains the mCODE[PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes.This profile can be used to represent the Onconova neoplastic entities of relationship`primary`,`local_recurrence`, and`regional_recurrence`. Local and regional recurrences are indicated using extensions to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional). For example, a local recurrence would be represented as a PrimaryCancerCondition with:```
{
    clinicalStatus: {
        coding: [
            {
                system: "http://snomed.info/sct",
                code: "recurrence",
                display: "Recurrence"
            }
        ],
    },
    _clinicalStatus {
        extension: [
            {
                url: "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type",
                valueCodeableConcept: {
                    coding: [
                        {
                            system: "http://snomed.info/sct",
                            code: "255470001",
                            display: "Local (qualifier value)"
                        }
                    ]
                }
            }
        ]
    },
}

```
 |
| [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md) | A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element.This profile extends the base mCODE[RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary)to include specific constraints and requirements for Onconova. |
| [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md) | A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).It constrains the mCODE[SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. |
| [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md) | A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates.It extends the base mCODE[CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure)to include specific constraints and requirements for Onconova. |
| [TNM Distant Metastases Category](StructureDefinition-onconova-tnm-distant-metastases-category.md) | A profile representing the TNM distant metastases category for a cancer patient.This profile extends the base mCODE[TNMDistantMetastasesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category)to include specific constraints and extensions relevant to Onconova. |
| [TNM Grade Category](StructureDefinition-onconova-tnm-grade-category.md) | A profile representing the TNM grade category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [TNM Lymphatic Invasion Category](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md) | A profile representing the TNM lymphatic invasion category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [TNM Perineural Invasion Category](StructureDefinition-onconova-tnm-perineural-invasion-category.md) | A profile representing the TNM perineural invasion category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [TNM Primary Tumor Category](StructureDefinition-onconova-tnm-primary-tumor-category.md) | A profile representing the TNM primary tumor category for a cancer patient.This profile extends the base mCODE[TNMPrimaryTumorCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category)to include specific constraints and extensions relevant to Onconova. |
| [TNM Regional Nodes Category](StructureDefinition-onconova-tnm-regional-nodes-category.md) | A profile representing the TNM regional nodes category for a cancer patient.This profile extends the base mCODE[TNMRegionalNodesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category)to include specific constraints and extensions relevant to Onconova. |
| [TNM Residual Tumor Category](StructureDefinition-onconova-tnm-residual-tumor-category.md) | A profile representing the TNM residual tumor category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [TNM Serum Tumor Marker Level Category](StructureDefinition-onconova-serous-tumor-marker-level-category.md) | A profile representing the serum tumor marker level category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md) | A profile representing the TNM stage group for a cancer patient.It extends the base mCODE[TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group)to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova. |
| [TNM Venous Invasion Category](StructureDefinition-onconova-venous-invasion-category.md) | A profile representing the venous invasion category for a cancer patient.This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. |
| [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md) | A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates.Due to its abstract conceptual nature, it is based on a FHIR`List`to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually. |
| [Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md) | A profile representing a tumor board review for a cancer patient.This profile extends the base FHIR`Procedure`resource since there is no equivalent mCODE profile that covers the use case. |
| [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md) | A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value.This profile extends the base mCODE[TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test)to include specific constraints and requirements for Onconova.If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level). |
| [Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md) | A profile representing tumor mutational burden for a cancer patient.This profile extends the GenomicsReporting IG[TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb)to include specific constraints and extensions relevant to Onconova. |
| [Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md) | A profile representing tumor neoantigen burden for a cancer patient.This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Adjunctive Role](StructureDefinition-onconova-ext-adjunctive-role.md) | Indicates the role of this medication administration in the context of the overall treatment plan. |
| [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md) | Details about an action taken to mitigate or manage the adverse event. |
| [Age](StructureDefinition-onconova-ext-age.md) | The approximate age of the patient. |
| [Age at Diagnosis](StructureDefinition-onconova-ext-age-at-diagnosis.md) | The approximate age of the patient at the time of diagnosis of the disease. |
| [CTCAE Grade](StructureDefinition-onconova-ext-ctc-grade.md) | The grade of the adverse event as defined by the Common Terminology Criteria for Adverse Events (CTCAE). |
| [Cancer Morphology](StructureDefinition-onconova-ext-cancer-morphology.md) | The morphology of the cancer, represented by a ICD-O-3 code. |
| [Cancer Topography](StructureDefinition-onconova-ext-cancer-topography.md) | The topography of the cancer, represented by a ICD-O-3 code. |
| [Cause of Death](StructureDefinition-onconova-ext-cause-of-death.md) | The cause of death for the patient. |
| [Combined With](StructureDefinition-onconova-ext-combined-with.md) | Indicates that this medication administration was given in combination with another medication administration. |
| [Consent status](StructureDefinition-onconova-ext-consent-status.md) | The status of whether the patient has given or revoked consent for reasearch use. |
| [Contributors](StructureDefinition-onconova-ext-contributors.md) | The individuals or organizations that contributed to the patient's care. |
| [Cycles](StructureDefinition-onconova-ext-cycles.md) | Indicates the total number of cycles for this medication administration. |
| [Data Completion Rate](StructureDefinition-onconova-ext-data-completion-rate.md) | The percentage of data elements categories that have been completed for a patient. |
| [End of Records](StructureDefinition-onconova-ext-end-of-records.md) | Indicates the last known record date of a patient. |
| [Genomic Assessment Date](StructureDefinition-onconova-ext-genomic-assessment-date.md) | Date at which the genomic variant was assessed and/or reported. |
| [Is Primary Therapy](StructureDefinition-onconova-ext-is-primary-therapy.md) | Indicates whether this medication administration is the primary therapy within a therapy line. |
| [Molecular Tumor Board CUP Characterization](StructureDefinition-onconova-ext-molecular-tumor-board-cup-characterization.md) | A characterization of the tumor board review focused on cancer of unknown primary (CUP) origin. |
| [Molecular Tumor Board Molecular Comparison](StructureDefinition-onconova-ext-molecular-tumor-board-molecular-comparison.md) | A comparison of molecular findings discussed during the molecular tumor board review. |
| [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md) | A therapeutic recommendation or follow-up action resulting from a molecular tumor board review. |
| [Overall Survival](StructureDefinition-onconova-ext-overall-survival.md) | The duration of time from either the date of diagnosis or the start of treatment for a disease, such as cancer, that patients diagnosed with the disease are still alive. In a clinical trial, measuring the overall survival is one way to see how well a new treatment works. |
| [Recist Is Interpreted](StructureDefinition-onconova-ext-recist-is-interpreted.md) | Indicates that whether the RECIST was interpreted from a radiology report rather than extracted. |
| [Recurrence Of](StructureDefinition-onconova-ext-recurrence-of.md) | Indicates that the condition is a recurrence of a previous condition, and provides a reference to that previous condition. |
| [Recurrence Type](StructureDefinition-onconova-ext-differentiation.md) | THe histological differentiation of the tumor. |
| [Recurrence Type](StructureDefinition-onconova-ext-recurrence-type.md) | Indicates the type of recurrence for the condition (local or regional). |
| [Risk Assessment Score](StructureDefinition-onconova-ext-risk-assessment-score.md) | The numerical score of the risk assessment. |
| [Therapy Line Intent](StructureDefinition-onconova-ext-therapy-line-intent.md) | The intent of the therapy line, such as curative or palliative. |
| [Therapy Line Number](StructureDefinition-onconova-ext-therapy-line-number.md) | The number representing the sequence of the therapy line in the overall treatment regimen. |
| [Therapy Line Period](StructureDefinition-onconova-ext-therapy-line-period.md) | The period during which the therapy line was performed. |
| [Therapy Line Progression Date](StructureDefinition-onconova-ext-therapy-line-progression-date.md) | The date when disease progression was observed during or after the therapy line. |
| [Therapy Line Progression-Free Survival](StructureDefinition-onconova-ext-therapy-line-progression-free-survival.md) | The progression-free survival duration for the therapy line. |
| [Therapy Line Reference](StructureDefinition-ext-therapy-line-reference.md) | A reference to the therapy line associated with this treatment. |
| [Tumor Board Specialization](StructureDefinition-onconova-ext-tumor-board-specialization.md) | The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors. |
| [Tumor Marker Analyte](StructureDefinition-onconova-ext-tumor-marker-analyte.md) | The specific analyte or substance being measured as a tumor marker, such as PSA, CA-125, or CEA. |
| [Unknown Entry](StructureDefinition-onconova-ext-unknown-entry.md) | Value is not collected and cannot be provided by Onconova. |
| [Vital status](StructureDefinition-onconova-ext-vital-status.md) | The status of whether the patient is alive or deceased or unknown. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Adjunctive Therapy Roles](ValueSet-onconova-vs-adjunctive-therapy-roles.md) | Codes representing roles for adjunctive therapy in oncology. |
| [Adverse Event Mitigation - Drugs](ValueSet-onconova-vs-adverse-event-mitigation-drugs.md) | Drugs or medication categories used in the mitigation process of an adverse event. |
| [Adverse Event Mitigation - Management](ValueSet-onconova-vs-adverse-event-mitigation-managements.md) | Classification of actions to mitigate adverse events affecting a patient's health. |
| [Adverse Event Mitigation - Procedures](ValueSet-onconova-vs-adverse-event-mitigation-procedures.md) | Procedures undertaken to mitigate the impact of an adverse event on a patient's health. |
| [Adverse Event Mitigation - Treatment Adjustment](ValueSet-onconova-vs-adverse-event-mitigation-treatment-adjustments.md) | Adjustments made to a patient's treatment plan in response to an adverse event. |
| [Adverse Event Mitigation Categories](ValueSet-onconova-vs-adverse-event-mitigation-categories.md) | Categories of actions taken to mitigate or manage adverse events in oncology. |
| [Amino Acid Change Type Value Set](ValueSet-onconova-vs-amino-acid-change-type.md) | Amino acid change types due to a genomic variant. It constraints and expands the original[LOINC Answer List LL380-7](https://loinc.org/LL380-7/)to enforce Onconova-compatible codes |
| [Antineoplastic Agents](ValueSet-onconova-vs-antineoplastic-agents.md) | A value set of antineoplastic agents. |
| [CTC Adverse Events](ValueSet-onconova-vs-ctc-adverse-events.md) | Common Terminology Criteria for Adverse Events (CTCAE) is a standard classification and severity grading scale for adverse events in clinical trials and oncology practice. |
| [Cancer Imaging Methods](ValueSet-onconova-vs-cancer-imaging-methods.md) | Codes representing various imaging methods used in cancer diagnosis and monitoring. |
| [Cancer Risk Assessment Methods](ValueSet-onconova-vs-cancer-risk-assessment-methods.md) | A value set containing codes for various cancer risk assessment methods. |
| [Cause of Death Value Set](ValueSet-onconova-vs-causes-of-death.md) | The causes of death that are relevant for a cancer patient. |
| [Clinical Relevance Value Set](ValueSet-onconova-vs-clinical-relevance.md) | Clinical relevance of a genomic variant |
| [Coding DNA Change Type Value Set](ValueSet-onconova-vs-dna-change-type.md) | Coding DNA change types due to a genomic variant. It constraints and expands the original[LOINC Answer List LL380-7](https://loinc.org/LL380-7/)to enforce Onconova-compatible codes |
| [Comorbidity Panels](ValueSet-onconova-vs-comorbidity-panels.md) | A collection of comorbidity panels relevant to cancer patients. |
| [Consent Status Value Set](ValueSet-onconova-vs-consent-status.md) | The consent status of a patient |
| [Expected Drug Effects](ValueSet-onconova-vs-expected-drug-effects.md) | A value set of expected drug effects. |
| [Exposure Agents](ValueSet-onconova-vs-exposure-agents.md) | Agents to which a patient may have been exposed. |
| [ICD-10 Codes](ValueSet-onconova-vs-icd-10-conditions.md) | This value set includes sample ICD-10 codes. |
| [ICD-O-3 Differentiation](ValueSet-onconova-vs-icdo3-differentiation.md) | A value set of ICD-O-3 differentiation codes. |
| [ICD-O-3 Morphology Behavior](ValueSet-onconova-vs-icdo3-morphology-behavior.md) | A value set of ICD-O-3 morphology behavior codes. |
| [ICD-O-3 Topography](ValueSet-onconova-vs-icdo3-topography.md) | A value set of ICD-O-3 topography codes. |
| [Observation Body Sites Value Set](ValueSet-onconova-vs-observation-bodysites.md) | Bodysites related to an observation |
| [Recreational Drugs](ValueSet-onconova-vs-recreational-drugs.md) | Substances that people use to alter their mental state, often for pleasure or leisure, with effects ranging from relaxation and euphoria to hallucinations and altered perceptions. |
| [Recurrence Type Value Set](ValueSet-onconova-vs-recurrence-type.md) | A value set representing the types of cancer recurrence, specifically local and regional recurrences. |
| [Risk Assessment Values](ValueSet-onconova-vs-cancer-risk-assessment-values.md) | A non-exhaustive value set containing codes that result from risk assessments, i.e., the risk level of the cancer. |
| [Smoking status](ValueSet-onconova-vs-smoking-status.md) | Smoking status of a patient |
| [TNM Distant Metastasis Categories Value Set](ValueSet-onconova-vs-tnm-distant-metastasis-categories.md) | TNM Distant Metastasis Categories Value Set |
| [TNM Grade Categories Value Set](ValueSet-onconova-vs-tnm-grade-categories.md) | TNM Grade Categories Value Set |
| [TNM Grade Category Methods Value Set](ValueSet-onconova-vs-tnm-grade-category-methods.md) | TNM Grade Category Methods Value Set |
| [TNM Lymphatic Invasion Categories Value Set](ValueSet-onconova-tnm-lymphatic-invasion-categories.md) | TNM Lymphatic Invasion Categories Value Set |
| [TNM Perineural Invasion Categories Value Set](ValueSet-onconova-tnm-perineural-invasion-categories.md) | TNM Perineural Invasion Categories Value Set |
| [TNM Primary Tumor Categories](ValueSet-onconova-vs-tnm-primary-tumor-categories.md) | TNM Primary Tumor Categories Value Set |
| [TNM Regional Nodes Categories Value Set](ValueSet-onconova-vs-tnm-regional-nodes-categories.md) | TNM Regional Nodes Categories Value Set |
| [TNM Residual Tumor Categories Value Set](ValueSet-onconova-tnm-residual-tumor-categories.md) | TNM Residual Tumor Categories Value Set |
| [TNM Serum Tumor Marker Level Categories Value Set](ValueSet-onconova-vs-tnm-serum-tumor-marker-level-categories.md) | TNM Serum Tumor Marker Level Categories Value Set |
| [TNM Venous Invasion Categories Value Set](ValueSet-onconova-vs-tnm-venous-invasion-categories.md) | TNM Venous Invasion Categories Value Set |
| [Treatment Termination Reasons](ValueSet-onconova-vs-treatment-termination-reasons.md) | Codes representing reasons for terminating a treatment in oncology. |
| [Tumor Board Recommendations](ValueSet-onconova-vs-tumor-board-recommendations.md) | A value set of recommendations that may be made by a tumor board for a cancer patient. |
| [Tumor Marker Analytes](ValueSet-onconova-vs-tumor-marker-analytes.md) | Codes representing analytes for tumor markers. |
| [Vital Status Value Set](ValueSet-onconova-vs-vital-status.md) | The vital status of a patient |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Comorbidity Panels Code System](CodeSystem-onconova-cs-comorbidity-panels.md) | A code system for comorbidity panels relevant to cancer patients. |
| [Consent Status Code System](CodeSystem-onconova-cs-consent-status.md) | A code system for consent status relevant to Onconova patients. |
| [To Be Determined Codes](CodeSystem-onconova-cs-tbd.md) | A code system for codes that are yet to be determined. |

