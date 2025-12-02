Profile: OnconovaCancerFamilyMemberHistory
Parent: FamilyMemberHistory
Id: onconova-cancer-family-member-history
Title: "Cancer Family Member History Profile"
Description: """
A profile recording of a patient's family member's history of cancer.

This profile is based on the core FHIR `FamilyMemberHistory` resource rather than the mCODE  [HistoryOfMetastaticCancer profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-history-of-metastatic-cancer) to allow for a broader range of cancer history documentation (not limited to metastatic cancer). It includes constraints to ensure that at least one cancer condition is recorded, along with optional extensions for cancer morphology and topography.

**Conformance:**

FamilyMemberHistory resources representing a history of (primary or metastatic) cancer in a patient's family member in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* deceased[x] only boolean
* deceasedBoolean ^short = "Indicates whether the family member is deceased"
* insert Obligations(deceasedBoolean, #SHALL:populate-if-known, #SHOULD:persist)

* insert Obligations(relationship, #SHALL:populate, #SHOULD:persist)
* insert Obligations(date, #SHALL:populate, #SHOULD:persist)

* patient only Reference(OnconovaCancerPatient)
* patient ^short = "The patient whose family member is the subject of this history"
* insert Obligations(patient, #SHALL:populate, #SHOULD:persist)

* condition 1..* MS
* condition ^slicing.discriminator.type = #value
* condition ^slicing.discriminator.path = "code"
* condition ^slicing.rules = #open

* condition contains cancerCondition 1..* MS
* insert Obligations(condition[cancerCondition], #SHALL:populate-if-known, #SHOULD:persist)

* condition[cancerCondition].code = http://snomed.info/sct#363346000 "Malignant neoplastic disease (disorder)" 

* condition[cancerCondition].onset[x] only Age
* insert Obligations(condition[cancerCondition].onsetAge, #SHALL:populate-if-known, #SHOULD:persist)

* condition[cancerCondition].extension contains FamilyMemberHistoryCancerMorphology named morphology 0..1 MS
* insert Obligations(condition[cancerCondition].extension[morphology], #SHALL:populate-if-known, #SHOULD:persist)

* condition[cancerCondition].extension contains FamilyMemberHistoryCancerTopography named topography 0..1 MS
* insert Obligations(condition[cancerCondition].extension[topography], #SHALL:populate, #SHOULD:persist)

* insert NotUsed(name)
* insert NotUsed(sex)
* insert NotUsed(born[x])
* insert NotUsed(age[x])
* insert NotUsed(estimatedAge)
* insert NotUsed(reasonCode)
* insert NotUsed(reasonReference)

* obeys o-fam-req-1 and o-fam-req-2 and o-fam-req-3

Invariant: o-fam-req-1
Description: "The patient element is required and must be provided."
Expression: "patient.exists()"
Severity: #error

Invariant: o-fam-req-2
Description: "The date element is required and must be provided."
Expression: "date.exists() and date.hasValue()"
Severity: #error

Invariant: o-fam-req-3
Description: "The relationship element is required and must be provided."
Expression: "relationship.exists() and relationship.coding.exists()"
Severity: #error