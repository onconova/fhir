# Profiles - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

Resource Profiles The following profiles have been defined for this implementation guide:

* [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md) 
A profile representing an adverse event experienced by a cancer patient as a result of an antineoplastic treatment, structured according to the Common Terminology Criteria for Adverse Events (CTCAE). This resource is used to capture and standardize the documentation of adverse events occurring during cancer care, including the type of event, its CTCAE grade, and any mitigation actions taken. 
The profile constrains the base FHIR`AdverseEvent`resource to ensure consistent use of CTCAE codes and grades, and supports linkage to related treatments such as medications, radiotherapy, or surgical procedures documented in Onconova. The profile also provides extensions for recording mitigation strategies, supporting detailed tracking and management of adverse events in cancer patients. 

* [Aneuploid Score Profile](StructureDefinition-onconova-aneuploid-score.md) 
A profile representing aneuploid score for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 

* [Cancer Family Member History](StructureDefinition-onconova-cancer-family-member-history.md) 
A profile recording of a family member's history of cancer. 
This profile is based on the core FHIR`FamilyMemberHistory`resource rather than the mCODE[HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer)to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography. 

* [Cancer Patient Profile](StructureDefinition-onconova-cancer-patient.md) 
A profile representing a cancer patient with specific extensions and constraints for the Onconova use case. 
It constrains the mCODE[CancerPatient profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient)to ensure anonymity of the patient information and to introduce additional Onconova-specific case information. Any`Patient`resource complying with the US Core`Patient`or mCODE`CancerPatient`profiles will also comply with this profile. 

* [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md) 
A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score. 
It constraints the mCODE[CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment)and expands the valuesets for cancer risk assessment methods and values. 

* [Cancer Stage](StructureDefinition-onconova-cancer-stage.md) 
A profile representing the cancer stage for a cancer patient. 
It constrains the mCODE[CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage)to include specific constraints and extensions relevant to Onconova. 

* [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md) 
A profile representing comorbidities for a cancer patient, i.e. other health conditions that exist alongside the primary cancer diagnosis. Supports existing comorbidity panels such as the Charlson Comorbidity Index (CCI) and Elixhauser Comorbidity Index (ECI) with comorbidity indexes. 
The profile constrains the mCODE[Comorbidities profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbidities)to ensure consistent use of ICD-10 codes for documenting comorbid conditions, and to link the comorbidity information to the Onconova primary cancer condition profile. 

* [ECOG Performance Status Profile](StructureDefinition-onconova-ecog-performance-status.md) 
A profile representing ECOG performance status score for a cancer patient. 
Adds minimal constraints to the mCODE[`ECOGPerformanceStatus`profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status)to account for Onconova specifics. 

* [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md) 
A profile representing a genomic variant identified for a cancer patient. 
This profile extends the base mCODE[GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant)(which in turn profiles the Genomics Reporting[Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova. 

* [Homologous Recombination Deficiency Profile](StructureDefinition-onconova-homologous-recombination-deficiency.md) 
A profile representing homologous recombination deficiency for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 

* [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md) 
A profile representing the imaging-based disease status of a cancer patient. 
It constrains the mCODE[CancerDiseaseStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status)to restrict it to imaging-based monitoring evaluated based on RECIST criteria. 

* [Karnofsky Performance Status Profile](StructureDefinition-onconova-Karnofsky-performance-status.md) 
A profile representing the Karnofsky performance status score for a cancer patient. 
Adds minimal constraints to the mCODE[KarnofskyPerformanceStatus profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status)to account for Onconova specifics. 

* [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md) 
A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). 
It directly profiles the base FHIR`Observation`resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. 

* [Loss of Heterozygosity Profile](StructureDefinition-onconova-loss-of-heterozygosity.md) 
A profile representing loss of heterozygosity for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 

* [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md) 
A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. 
This profile extends the base mCODE[CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration)to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies. 

* [Microsatellite Instability Profile](StructureDefinition-onconova-microsatellite-instability.md) 
A profile representing microsatellite instability for a cancer patient. 
This profile extends the GenomicsReporting IG[MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi)to include specific constraints and extensions relevant to Onconova. 

* [Molecular Tumor Board Review](StructureDefinition-onconova-molecular-tumor-board-review.md) 
A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the`OnconovaTumorBoardReview`profile to specify that the review is focused on molecular diagnostics and recommendations. 

* [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md) 
A profile that records the primary cancer condition, the original or first neoplasm in the body (Definition from:[NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary. 
It constrains the mCODE[PrimaryCancerCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 
This profile can be used to represent the Onconova neoplastic entities of relationship`primary`,`local_recurrence`, and`regional_recurrence`. Local and regional recurrences are indicated using extensions to denote that the condition is a recurrence of a previous condition, and to specify the type of recurrence (local or regional). For example, a local recurrence would be represented as a PrimaryCancerCondition with: ````{ clinicalStatus: { coding: [ { system: "http://snomed.info/sct", code: "recurrence", display: "Recurrence" } ], }, _clinicalStatus { extension: [ { url: "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-recurrence-type", valueCodeableConcept: { coding: [ { system: "http://snomed.info/sct", code: "255470001", display: "Local (qualifier value)" } ] } } ] }, }```` 

* [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md) 
A profile representing a summary of a course of radiotherapy delivered to a patient. It records the treatment intent, termination reason, modalities, techniques, number of sessions, and doses delivered to one or more body volumes. Whether the course has been fully delivered or stopped is indicated in the status element. 
This profile extends the base mCODE[RadiotherapyCourseSummary profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary)to include specific constraints and requirements for Onconova. 

* [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md) 
A profile recording the a secondary neoplasm, including location and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms). 
It constrains the mCODE[SecondaryCancerCCondition profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition)to constrain the terminologies of the cancer topography and morphology extensions to use exclusively ICD-O-3 codes. 

* [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md) 
A profile representing a surgical procedure performed on a cancer patient, including details about the procedure, its intent, and relevant dates. 
It extends the base mCODE[CancerRelatedSurgicalProcedure profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure)to include specific constraints and requirements for Onconova. 

* [TNM Distant Metastases Category](StructureDefinition-onconova-tnm-distant-metastases-category.md) 
A profile representing the TNM distant metastases category for a cancer patient. 
This profile extends the base mCODE[TNMDistantMetastasesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category)to include specific constraints and extensions relevant to Onconova. 

* [TNM Grade Category](StructureDefinition-onconova-tnm-grade-category.md) 
A profile representing the TNM grade category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [TNM Lymphatic Invasion Category](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md) 
A profile representing the TNM lymphatic invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [TNM Perineural Invasion Category](StructureDefinition-onconova-tnm-perineural-invasion-category.md) 
A profile representing the TNM perineural invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [TNM Primary Tumor Category](StructureDefinition-onconova-tnm-primary-tumor-category.md) 
A profile representing the TNM primary tumor category for a cancer patient. 
This profile extends the base mCODE[TNMPrimaryTumorCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category)to include specific constraints and extensions relevant to Onconova. 

* [TNM Regional Nodes Category](StructureDefinition-onconova-tnm-regional-nodes-category.md) 
A profile representing the TNM regional nodes category for a cancer patient. 
This profile extends the base mCODE[TNMRegionalNodesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category)to include specific constraints and extensions relevant to Onconova. 

* [TNM Residual Tumor Category](StructureDefinition-onconova-tnm-residual-tumor-category.md) 
A profile representing the TNM residual tumor category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [TNM Serum Tumor Marker Level Category](StructureDefinition-onconova-serous-tumor-marker-level-category.md) 
A profile representing the serum tumor marker level category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [TNM Stage Group](StructureDefinition-onconova-tnm-stage-group.md) 
A profile representing the TNM stage group for a cancer patient. 
It extends the base mCODE[TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group)to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova. 

* [TNM Venous Invasion Category](StructureDefinition-onconova-venous-invasion-category.md) 
A profile representing the venous invasion category for a cancer patient. 
This profile extends the base mCODE[TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category)to specify the new TNM category. 

* [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md) 
A profile representing a line of therapy in a cancer treatment regimen, including details about the therapy line number, associated treatments, and relevant dates. 
Due to its abstract conceptual nature, it is based on a FHIR`List`to capture the specific resources involved in the therapy line. Therapy lines in Onconova are assigned automatically based on existing Procedure and MedicationAdministration resources and are not created manually. 

* [Tumor Board Review](StructureDefinition-onconova-tumor-board-review.md) 
A profile representing a tumor board review for a cancer patient. 
This profile extends the base FHIR`Procedure`resource since there is no equivalent mCODE profile that covers the use case. 

* [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md) 
A profile representing a tumor marker observation for a cancer patient, including the type of tumor marker and its value. 
This profile extends the base mCODE[TumorMarkerTest profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker-test)to include specific constraints and requirements for Onconova. 
If relied on the same use context as mCODE, namely for substances found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (non-cancer) conditions measured at the levels of the protein and substance post-RNA protein synthesis (not at genomic level). 

* [Tumor Mutational Burden Profile](StructureDefinition-onconova-tumor-mutational-burden.md) 
A profile representing tumor mutational burden for a cancer patient. 
This profile extends the GenomicsReporting IG[TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb)to include specific constraints and extensions relevant to Onconova. 

* [Tumor Neoantigen Burden Profile](StructureDefinition-onconova-tumor-neoantigen-burden.md) 
A profile representing tumor neoantigen burden for a cancer patient. 
This profile extends the GenomicsReporting IG[GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base)to include specific constraints and extensions relevant to Onconova. 

