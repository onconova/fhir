Profile: OnconovaTumorBoardReview
Parent: Procedure
Id: onconova-tumor-board-review
Title: "Tumor Board Review Profile"
Description: """A profile representing a tumor board review for a cancer patient.

This profile extends the base FHIR `Procedure` resource since there is no equivalent mCODE profile that covers the use case. 

**Conformance:**

Procedure resources representing a tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""    

* category = $SNOMED#103693007 "Diagnostic procedure"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* reasonReference 1..* MS
* reasonReference ^short = "The condition(s) that motivated the tumor board"
* reasonReference only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* insert Obligations(performedDateTime, #SHALL:populate, #SHOULD:persist)

* performed[x] 1..1 MS
* performed[x] only dateTime
* performedDateTime ^short = "The date when the tumor board review was performed"
* insert Obligations(performedDateTime, #SHALL:populate, #SHOULD:persist)

* code = $NCIT#C93304 "Tumor Board Review"
* code.extension contains TumorBoardSpecialization named specialization 0..1 MS 
* code.extension[specialization] ^short = "Tumor Board Specialization, if relevant"
* insert Obligations(code.extension[specialization], #SHALL:populate-if-known, #MAY:persist)

* followUp MS 
* followUp from OnconovaTumorBoardRecommendations (required)
* followUp ^short = "Tumor Board Recommendation"
* followUp ^definition = "Any recommendations or follow-up actions resulting from the tumor board."
* insert Obligations(followUp, #SHALL:populate-if-known, #SHOULD:persist)

* insert NotUsed(location) 
* insert NotUsed(performer)
* insert NotUsed(asserter) 
* insert NotUsed(recorder)
* insert NotUsed(basedOn) 
* insert NotUsed(bodySite) 
* insert NotUsed(outcome) 
* insert NotUsed(complication) 
* insert NotUsed(complicationDetail) 
* insert NotUsed(reasonCode)

* obeys o-tub-req-1 and o-tub-req-2


Profile: OnconovaMolecularTumorBoardReview
Parent: OnconovaTumorBoardReview
Id: onconova-molecular-tumor-board-review
Title: "Molecular Tumor Board Review Profile"
Description: """
A profile representing a specialized molecular tumor board review for a cancer patient. This profile extends the `OnconovaTumorBoardReview` profile to specify that the review is focused on molecular diagnostics and recommendations.

**Conformance:**

Procedure resources representing a molecular tumor board review in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code.extension[specialization].valueCodeableConcept = $NCIT#C20826 "Molecular Diagnosis"

// Add extensions for detailed therapeutic recommendations
* extension contains MolecularTumorBoardTherapeuticRecommendation named therapeuticRecommendation 0..* MS 
* extension[therapeuticRecommendation] ^short = "Therapeutic recommendation(s)"
* insert Obligations(extension[therapeuticRecommendation], #SHALL:populate-if-known, #SHOULD:persist)

// Add extensions for molecular comparison
* extension contains MolecularTumorBoardMolecularComparison named molecularComparison 0..1 MS
* extension[molecularComparison] ^short = "Molecular comparison(s)"
* insert Obligations(extension[molecularComparison], #SHALL:populate-if-known, #SHOULD:persist)

// Add extensions for CUP characterization
* extension contains MolecularTumorBoardCUPCharacterization named cupCharacterization 0..1 MS
* extension[cupCharacterization] ^short = "CUP characterization(s)"
* insert Obligations(extension[cupCharacterization], #SHALL:populate-if-known, #SHOULD:persist)

// Constraints
* obeys o-tub-req-1 and o-tub-req-2

//==================
// Invariants 
//==================

Invariant: o-tub-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-tub-req-2
Description: "The performedDateTime element is required and must be provided."
Expression: "performedDateTime.exists() and performedDateTime.hasValue()"
Severity: #error


//==================
// Extensions 
//==================

Extension: TumorBoardSpecialization
Id: onconova-ext-tumor-board-specialization
Title: "Tumor Board Specialization"
Description: "The specialization or focus area of the tumor board conducting the review, such as hematologic malignancies or solid tumors."
* value[x] only CodeableConcept


Extension: MolecularTumorBoardTherapeuticRecommendation
Id: onconova-ext-molecular-tumor-board-therapeutic-recommendation
Title: "Molecular Tumor Board Therapeutic Recommendation"
Description: "A therapeutic recommendation or follow-up action resulting from a molecular tumor board review."

* extension contains clinicalTrial 0..1 MS
* extension[clinicalTrial].value[x] only string 
* insert Obligations(extension[clinicalTrial], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains medication 0..* MS
* extension[medication].value[x] only CodeableConcept
* extension[medication].valueCodeableConcept from AntineoplasticAgents (required)
* insert Obligations(extension[medication], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains supportingEvidence 0..* MS
* extension[supportingEvidence].value[x] only Reference(
    OnconovaTumorMarker or 
    OnconovaGenomicVariant or 
    OnconovaTumorMutationalBurden or 
    OnconovaMicrosatelliteInstability or 
    OnconovaLossOfHeterozygosity or 
    OnconovaHomologousRecombinationDeficiency or 
    OnconovaTumorNeoantigenBurden or
    OnconovaAneuploidScore
)
* insert Obligations(extension[supportingEvidence], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains expectedEffect 0..1 MS
* extension[expectedEffect].value[x] only CodeableConcept
* extension[expectedEffect].valueCodeableConcept from ExpectedDrugEffects (required)
* insert Obligations(extension[expectedEffect], #SHALL:populate-if-known, #SHOULD:persist)

* extension contains offLabelUse 0..1 MS
* extension[offLabelUse].value[x] only boolean
* insert Obligations(extension[offLabelUse], #SHOULD:populate-if-known, #SHOULD:persist)

* extension contains withinSoc 0..1 MS
* extension[withinSoc].value[x] only boolean
* insert Obligations(extension[withinSoc], #SHOULD:populate-if-known, #SHOULD:persist)

* obeys tumor-board-therapeutic-recommendation-1

Invariant: tumor-board-therapeutic-recommendation-1
Description: "Either clinical trial or medication SHALL be present"
Expression: "extension('clinicalTrial').exists() or extension('medication').exists()"
Severity: #error

Extension: MolecularTumorBoardMolecularComparison
Id: onconova-ext-molecular-tumor-board-molecular-comparison
Title: "Molecular Tumor Board Molecular Comparison"
Description: "A comparison of molecular findings discussed during the molecular tumor board review."

* extension contains conducted 1..1 MS 
* extension[conducted].value[x] only boolean
* extension[conducted] ^short = "Molecular comparison conducted"
* insert Obligations(extension[conducted], #SHALL:populate, #SHOULD:persist)

* extension contains matchedReference 0..1 MS 
* extension[matchedReference].value[x] only Reference(OnconovaPrimaryCancerCondition or OnconovaSecondaryCancerCondition)
* extension[matchedReference] ^short = "Condition matched during molecular comparison"
* insert Obligations(extension[matchedReference], #SHOULD:populate-if-known, #SHOULD:persist)

Extension: MolecularTumorBoardCUPCharacterization
Id: onconova-ext-molecular-tumor-board-cup-characterization
Title: "Molecular Tumor Board CUP Characterization"
Description: "A characterization of the tumor board review focused on cancer of unknown primary (CUP) origin."

* extension contains conducted 1..1 MS 
* extension[conducted].value[x] only boolean
* extension[conducted] ^short = "CUP characterization conducted"
* insert Obligations(extension[conducted], #SHALL:populate, #SHOULD:persist)

* extension contains success 0..1 MS 
* extension[success].value[x] only boolean
* extension[success] ^short = "CUP characterization successful"
* insert Obligations(extension[success], #SHALL:populate-if-known, #SHOULD:persist)