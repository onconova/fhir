RuleSet: StagingNotUsed
* insert NotUsed(status)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(performer)
* insert NotUsed(bodySite)
* insert NotUsed(interpretation)
* insert NotUsed(specimen)
* insert NotUsed(device)    
* insert NotUsed(referenceRange)
* insert NotUsed(component)

Profile: OnconovaCancerStage 
Parent: CancerStage
Id: onconova-cancer-stage
Title: "Cancer Stage Profile"
Description: """
A profile representing the cancer stage for a cancer patient. 

It constrains the mCODE [CancerStage profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a cancer staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""      

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..* MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* value[x] 1..1 MS
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* method 0..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3


Profile: OnconovaLymphomaStage
Parent: LymphomaStage
Id: onconova-lymphoma-stage
Title: "Lymphoma Stage"
Description: """
Staging of lymphoma (both Hodgkins and Non-Hodgkins) by Ann Arbor, Cotswold, or Lugano staging systems. The method (required) indicates which of these related staging systems was used.

**Conformance:**

Observation resources representing a lymphoma staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""      

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..* MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* value[x] 1..1 MS
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* method 0..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3


Profile: OnconovaTNMStageGroup 
Parent: TNMStageGroup
Id: onconova-tnm-stage-group
Title: "TNM Stage Group"
Description: """
A profile representing the TNM stage group for a cancer patient. 

It extends the base mCODE [TNMStageGroup profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-stage-group) to expand the TNM subcategories and include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a cancer TNM staging in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""      

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* hasMember only Reference(TNMCategory)
* insert Obligations(hasMember, #SHALL:populate-if-known, #SHOULD:persist)

// Set profiles for existing slice
* hasMember[TNMCategory] only Reference(
    OnconovaTNMPrimaryTumorCategory or 
    OnconovaTNMDistantMetastasesCategory or 
    OnconovaTNMRegionalNodesCategory
)

// Add additional slices for the other TNM category profiles
* hasMember contains lymphaticInvasionCategory 0..1 
* hasMember[lymphaticInvasionCategory] only Reference(OnconovaTNMLymphaticInvasionCategory)

* hasMember contains perineuralInvasionCategory 0..1 
* hasMember[perineuralInvasionCategory] only Reference(OnconovaTNMPerineuralInvasionCategory)

* hasMember contains residualTumorCategory 0..1 
* hasMember[residualTumorCategory] only Reference(OnconovaTNMResidualTumorCategory)

* hasMember contains serumTumorMarkerLevelCategory 0..1 
* hasMember[serumTumorMarkerLevelCategory] only Reference(OnconovaTNMSerumTumorMarkerLevelCategory)

* hasMember contains gradeCategory 0..1 
* hasMember[gradeCategory] only Reference(OnconovaTNMGradeCategory)

* hasMember contains venousInvasionCategory 0..1 
* hasMember[venousInvasionCategory] only Reference(OnconovaTNMVenousInvasionCategory)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMPrimaryTumorCategory 
Parent: TNMPrimaryTumorCategory
Id: onconova-tnm-primary-tumor-category
Title: "TNM Primary Tumor Category Profile"
Description: """
A profile representing the TNM primary tumor category for a cancer patient. 

This profile extends the base mCODE [TNMPrimaryTumorCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a TNM staging primary tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""      

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMPrimaryTumorCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3


Profile: OnconovaTNMDistantMetastasesCategory 
Parent: TNMDistantMetastasesCategory
Id: onconova-tnm-distant-metastases-category
Title: "TNM Distant Metastases Category Profile"
Description: """
A profile representing the TNM distant metastases category for a cancer patient. 

This profile extends the base mCODE [TNMDistantMetastasesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a TNM staging distant metastases parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMDistantMetastasisCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMRegionalNodesCategory 
Parent: TNMRegionalNodesCategory
Id: onconova-tnm-regional-nodes-category
Title: "TNM Regional Nodes Category Profile"
Description: """
A profile representing the TNM regional nodes category for a cancer patient. 

This profile extends the base mCODE [TNMRegionalNodesCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a TNM staging regional nodes parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMRegionalNodesCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMLymphaticInvasionCategory 
Parent: TNMCategory
Id: onconova-tnm-lymphatic-invasion-category
Title: "TNM Lymphatic Invasion Category Profile"
Description: """
A profile representing the TNM lymphatic invasion category for a cancer patient. 

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging lymphatic invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $SNOMED#385414009 "Lymphatic (small vessel) tumor invasion finding (finding)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMLymphaticInvasionCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMPerineuralInvasionCategory 
Parent: TNMCategory
Id: onconova-tnm-perineural-invasion-category
Title: "TNM Perineural Invasion Category Profile"
Description: """
A profile representing the TNM perineural invasion category for a cancer patient. 

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging perineural invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $SNOMED#396394004 "Perineural invasion finding (finding)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMPerineuralInvasionCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMResidualTumorCategory 
Parent: TNMCategory
Id: onconova-tnm-residual-tumor-category
Title: "TNM Residual Tumor Category Profile"
Description: """
A profile representing the TNM residual tumor category for a cancer patient.

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging residual tumor parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $SNOMED#37161004 "Finding of residual tumor (finding)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMResidualTumorCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMSerumTumorMarkerLevelCategory
Parent: TNMCategory 
Id: onconova-tnm-serum-tumor-marker-level-category
Title: "TNM Serum Tumor Marker Level Category Profile"
Description: """
A profile representing the TNM serum tumor marker level category for a cancer patient. 

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging serum tumor marker level parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $SNOMED#396701002  "Finding of serum tumor marker level (finding)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMSerumTumorMarkerLevelCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMVenousInvasionCategory
Parent: TNMCategory 
Id: onconova-tnm-venous-invasion-category
Title: "TNM Venous Invasion Category Profile"
Description: """
A profile representing the TNM venous invasion category for a cancer patient. 

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging venous invasion parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""   

* code = $SNOMED#369732007 "Venous (large vessel) tumor invasion finding (finding)"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMVenousInvasionCategories (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3

Profile: OnconovaTNMGradeCategory 
Parent: TNMCategory
Id: onconova-tnm-grade-category
Title: "TNM Grade Category Profile"
Description: """
A profile representing the TNM grade category for a cancer patient. 

This profile extends the base mCODE [TNMCategory profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-category) to specify the new TNM category.

**Conformance:**

Observation resources representing a TNM staging grade category parameter in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* focus 1..1 MS
* focus only Reference(OnconovaPrimaryCancerCondition)
* insert Obligations(focus, #SHALL:populate, #SHOULD:persist)

* method 1..1 MS
* insert Obligations(method, #SHALL:populate-if-known, #SHOULD:persist)

* value[x] 1..1 MS
* valueCodeableConcept from TNMGradeCategories (required)   
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* code from TNMGradeCategoryMethods (required)
* insert ObligationsWithUscdi(value[x], #SHALL:populate, #SHOULD:persist)

* insert StagingNotUsed
* obeys o-stg-req-1 and o-stg-req-2 and o-stg-req-3


Invariant: o-stg-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-stg-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-stg-req-3
Description: "The valueCodeableConcept element is required and must be provided."
Expression: "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()"
Severity: #error
