Profile: OnconovaCancerRiskAssessment
Parent: CancerRiskAssessment
Id: onconova-cancer-risk-assessment
Title: "Cancer Risk Assessment Profile"
Description: """
A profile representing a risk assessment performed for a cancer patient, including the method used, the resulting risk level, and an optional numerical score.

It constraints the mCODE [CancerRiskAssessment profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-risk-assessment) and expands the valuesets for cancer risk assessment methods and values.
"""
* status = #final
* subject only Reference(OnconovaCancerPatient)
* code from CancerRiskAssessmentMethods (required)
* valueCodeableConcept from CancerRiskAssessmentValues (required)

// Add extension for numerical score of the risk assessment
* extension contains RiskAssessmentScore named riskAssessmentScore 0..1 

// Constraints 
* obeys o-ria-req-1 and 
    o-ria-req-2 and 
    o-ria-req-3 and 
    o-ria-req-4


// Annotate unused elements
* insert NotUsed(performer)
* insert NotUsed(component)
* insert NotUsed(interpretation)
* insert NotUsed(dataAbsentReason)
* insert NotUsed(encounter)
* insert NotUsed(partOf)
* insert NotUsed(basedOn)
* insert NotUsed(hasMember)
* insert NotUsed(derivedFrom)

//======================
// Extensions
//======================

Extension: RiskAssessmentScore
Id: onconova-ext-risk-assessment-score
Title: "Risk Assessment Score"
Description: "The numerical score of the risk assessment."
* value[x] only decimal or integer


Invariant: o-ria-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-ria-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-ria-req-3
Description: "The code element is required and must be provided."
Expression: "code.exists() and code.coding.exists()"
Severity: #error

Invariant: o-ria-req-4
Description: "The valueCodeableConcept element is required and must be provided."
Expression: "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()"
Severity: #error

