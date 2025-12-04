# Profiles - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

Resource Profiles The following profiles have been defined for this implementation guide:

* [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) 
A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken. 
The profile constrains the base FHIR`AdverseEvent`resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients. 
**Conformance:** 
AdverseEvent resources representing an adverse event caused by a cancer therapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md) 
A profile representing aneuploid score for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing an aneuploid score obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md) 
A profile recording of a patient's family member's history of cancer. 
This profile is based on the core FHIR`FamilyMemberHistory`resource rather than the mCODE[HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer)to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography. 
**Conformance:** 
FamilyMemberHistory resources representing a history of (primary or metastatic) cancer in a patient's family member in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md) 
A profile representing a patient with or is receiving medical treatment for a malignant growth or tumor. 
It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)with specific extensions and constraints for the Onconova use case. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile if the`Must-Support`extensions are accounted for. 
**Conformance:** 
Patient resources representing Cancer Patients in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md) 
A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score. 
It constraints the mCODE[CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment)and expands the valuesets for cancer risk assessment methods and values. 
**Conformance:** 
Observation resources representing a cancer-related risk assessment in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Cancer Stage Profile](StructureDefinition-onconova-cancer-stage.md) 
A profile representing the cancer stage for a cancer patient. 
It constrains the mCODE[CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a cancer staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md) 
A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes. 
The profile constrains the mCODE[Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities)to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. 
**Conformance:** 
Observation resources representing a generic or panel comorbidities assessment in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md) 
A profile representing the (Eastern Cooperative Oncology Group) ECOG performance status score for a cancer patient. 
Adds minimal constraints to the mCODE[`ECOGPerformanceStatus`profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status)to account for Onconova specifics. 
**Conformance:** 
Observation resources representing an ECOG performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md) 
A profile representing a genomic variant identified for a cancer patient. 
This profile extends the base mCODE[GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant)(which in turn profiles the Genomics Reporting[Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a genomic variant in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md) 
A profile representing homologous recombination deficiency for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a homologous recombination deficiency obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md) 
A profile representing the imaging-based disease status of a cancer patient. 
It constrains the mCODE[CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status)to restrict it to imaging-based monitoring evaluated based on RECIST criteria. 
**Conformance:** 
Observation resources representing a disease status obtained through imaging techniques in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Karnofsky Performance Status Profile](StructureDefinition-onconova-karnofsky-performance-status.md) 
A profile representing the Karnofsky performance status score for a cancer patient. 
Adds minimal constraints to the mCODE[`KarnofskyPerformanceStatus`profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status)to account for Onconova specifics. 
**Conformance:** 
Observation resources representing a Karnofsky performance status score in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md) 
A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). 
It directly profiles the base FHIR`Observation`resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. 
**Conformance:** 
Observation resources representing a summary of a patient's lifestyle in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md) 
A profile representing loss of heterozygosity for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a loss of heterozygosity obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Lymphoma Stage](StructureDefinition-onconova-lymphoma-stage.md) 
Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotswold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used. 
**Conformance:** 
Observation resources representing a lymphoma staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md) 
A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. 
This profile extends the base mCODE[CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration)to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies. 
Since Onocnova treats systemic therapies involving multiple antineoplastic agents administered together or in sequence as part of a single treatment plan, this profile allows for capturing such relationships between medication administrations using the`MedicationAdministration.extension[combinedWith]`extension slices. 
**Conformance:** 
MedicationAdministration resources representing a systemic therapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md) 
A profile representing microsatellite instability for a cancer patient. 
This profile extends the GenomicsReporting IG[MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a microsatellite instability obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Molecular Tumor Board Review Profile](StructureDefinition-onconova-molecular-tumor-board-review.md) 
A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the`OnconovaTumorBoardReview`profile to specify that the review is focused on molecular diagnostics and recommendations. 
**Conformance:** 
Procedure resources representing a molecular tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) 
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from:[NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary. 
It constrains the mCODE[PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 
Local and regional recurrences are indicated using the`clinicalStatus`and`clinicalStatus.extension`to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional). 
**Conformance:** 
Condition resources representing a primary or recurrent neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md) 
A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element. 
This profile extends the base mCODE[RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary)to include specific constraints and requirements for Onconova. 
**Conformance:** 
Procedure resources representing a radiotherapy in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md) 
A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms). 
It constrains the mCODE[SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 
**Conformance:** 
Condition resources representing a metastatic neoplastic entity in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md) 
A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. 
It extends the base mCODE[CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure)to include specific constraints and requirements for Onconova. 
**Conformance:** 
Procedure resources representing a surgery in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Distant Metastases Category Profile](StructureDefinition-onconova-tnm-distant-metastases-category.md) 
A profile representing the TNM distant metastases category for a cancer patient. 
This profile extends the base mCODE[TNMDistantMetastasesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category)to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging distant metastases parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Grade Category Profile](StructureDefinition-onconova-tnm-grade-category.md) 
A profile representing the TNM grade category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging grade category parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Lymphatic Invasion Category Profile](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md) 
A profile representing the TNM lymphatic invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging lymphatic invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Perineural Invasion Category Profile](StructureDefinition-onconova-tnm-perineural-invasion-category.md) 
A profile representing the TNM perineural invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging perineural invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Primary Tumor Category Profile](StructureDefinition-onconova-tnm-primary-tumor-category.md) 
A profile representing the TNM primary tumor category for a cancer patient. 
This profile extends the base mCODE[TNMPrimaryTumorCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category)to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging primary tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Regional Nodes Category Profile](StructureDefinition-onconova-tnm-regional-nodes-category.md) 
A profile representing the TNM regional nodes category for a cancer patient. 
This profile extends the base mCODE[TNMRegionalNodesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category)to include specific constraints and extensions relevant to Onconova. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging regional nodes parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Residual Tumor Category Profile](StructureDefinition-onconova-tnm-residual-tumor-category.md) 
A profile representing the TNM residual tumor category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging residual tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Serum Tumor Marker Level Category Profile](StructureDefinition-onconova-tnm-serum-tumor-marker-level-category.md) 
A profile representing the TNM serum tumor marker level category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging serum tumor marker level parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md) 
A profile representing the TNM stage group for a cancer patient. 
It extends the base mCODE[TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group)to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a cancer TNM staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [TNM Venous Invasion Category Profile](StructureDefinition-onconova-tnm-venous-invasion-category.md) 
A profile representing the TNM venous invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. Onconova does not provide this resource as an independent resource and is expected to be provided as a contained resource in the`TNMStageGroup`profile under`Obseration.contained`. 
**Conformance:** 
Observation resources representing a TNM staging venous invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md) 
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. 
Due to its abstract conceptual nature, it is based on a FHIR`List`to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually. 
**Conformance:** 
List resources representing a therapy line in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md) 
A profile representing a tumor board review for a cancer patient. 
This profile extends the base FHIR`Procedure`resource since there is no equivalent mCODE profile that covers the use case. 
**Conformance:** 
Procedure resources representing a tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md) 
A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. 
This profile extends the base mCODE[TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test)to include specific constraints and requirements for Onconova. 
If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level). 
**Conformance:** 
Observation resources representing a tumor marker in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md) 
A profile representing tumor mutational burden for a cancer patient. 
This profile extends the GenomicsReporting IG[TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a tumor mutational burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md) 
A profile representing tumor neoantigen burden for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 
**Conformance:** 
Observation resources representing a tumor neoantigen burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

* [Vital Signs Panel Profile](StructureDefinition-onconova-vital-signs-panel.md) 
A profile representing a collection of vital signs measurements. 
Since Onconova does not represent individual vital signs as separate observations, this profile aggregates multiple vital signs into a single Observation resource that can be uniquely identified. It extends the[Hl7 FHIR VitalsPanel profile](http://hl7.org/fhir/StructureDefinition/vitalspanel)to include specific constraints and requirements for Onconova. 
**Conformance:** 
Observation resources representing a collection of vital signs in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate`meta.profile`accordingly. 

