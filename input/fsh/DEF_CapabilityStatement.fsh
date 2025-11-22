Instance: onconova-capability-statement
InstanceOf: CapabilityStatement
Usage: #definition
* description = """
Supports the retrieval of the [mCODE Patient Bundle](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-patient-bundle) containing all relevant mCODE resources (provided by Onconova) for a given patient. It also supports CRUD interactions on all Onconova profiles defined in this Implementation Guide.
"""
* name = "OnconovaCapabilityStatement"
* title = "Onconova FHIR REST Server Capability Statement"
* format[0] = #json
* format[1] = #application/fhir+json
* fhirVersion = #4.0.1
* status = #draft
* date = "2025-09-25"
* kind = #capability
* implementationGuide = Canonical(onconova.fhir)
* software.name = "Onconova"
* imports = "http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patient-bundle" 

* rest[0].mode = #server
* rest[=].documentation =  """
As an mCODE-compliant server, the Onconova FHIR server **SHALL**:

1. Support all profiles defined in this Implementation Guide.
2. Implement the RESTful behavior according to the FHIR specification.
3. Return the following response classes:
    - (Status 400): Invalid parameter or data
    - (Status 401): Unauthorized request
    - (Status 403): Insufficient permissions
    - (Status 404): Unknown resource
    - (Status 405): HTTP method not allowed/supported
    - (Status 410): Deleted resource
    - (Status 500): Internal server error 
4. Support JSON source formats for all Onconova interactions.
5. Identify the Onconova profiles supported as part of the FHIR `meta.profile` attribute for each instance.
6. Support the searchParameters on each profile individually and in combination.

The Onconova FHIR server **MAY**:

1. Support XML source formats for its interactions.
"""

* rest[=].security.description = """
1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.
2. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code.
2. A server **SHALL** reject any requests with insufficient permissions by returning an `HTTP 403` forbidden response code.
"""



// GET [base]/$mcode-patient-bundle/[id]
* rest[=].operation[+].name = "mcode-patient-bundle"
* rest[=].operation[=].definition = "http://hl7.org/fhir/us/mcode/OperationDefinition/mcode-patient-everything"
* rest[=].operation[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[=].operation[=].extension.valueCode = #SHALL

// VERB [base]/Patient/[id]
* insert ResourceCRUD(Patient)
* rest[=].resource[=].profile = Canonical(OnconovaCancerPatient)

// VERB [base]/Condition/[id]
* insert ResourceCRUD(Condition)
* insert ResourceSupportedProfile(OnconovaPrimaryCancerCondition)
* insert ResourceSupportedProfile(OnconovaSecondaryCancerCondition)

// VERB [base]/Observation/[id]
* insert ResourceCRUD(Observation)
* insert ResourceSupportedProfile(OnconovaTumorMarker)
* insert ResourceSupportedProfile(OnconovaCancerRiskAssessment)
* insert ResourceSupportedProfile(OnconovaGenomicVariant)
* insert ResourceSupportedProfile(OnconovaTumorMutationalBurden)
* insert ResourceSupportedProfile(OnconovaMicrosatelliteInstability)
* insert ResourceSupportedProfile(OnconovaLossOfHeterozygosity)
* insert ResourceSupportedProfile(OnconovaHomologousRecombinationDeficiency)
* insert ResourceSupportedProfile(OnconovaTumorNeoantigenBurden)
* insert ResourceSupportedProfile(OnconovaAneuploidScore)
* insert ResourceSupportedProfile(OnconovaCancerStage)
* insert ResourceSupportedProfile(OnconovaTNMStageGroup)
* insert ResourceSupportedProfile(OnconovaComorbidities)
* insert ResourceSupportedProfile(OnconovaLifestyle)
* insert ResourceSupportedProfile(OnconovaKarnofskyPerformanceStatus)
* insert ResourceSupportedProfile(OnconovaECOGPerformanceStatus)
* insert ResourceSupportedProfile(OnconovaImagingDiseaseStatus)
* insert ResourceSupportedProfile(OnconovaTNMPrimaryTumorCategory)
* insert ResourceSupportedProfile(OnconovaTNMDistantMetastasesCategory)
* insert ResourceSupportedProfile(OnconovaTNMRegionalNodesCategory)
* insert ResourceSupportedProfile(OnconovaTNMLymphaticInvasionCategory)
* insert ResourceSupportedProfile(OnconovaTNMPerineuralInvasionCategory)
* insert ResourceSupportedProfile(OnconovaTNMResidualTumorCategory)
* insert ResourceSupportedProfile(OnconovaTNMGradeCategory)
* insert ResourceSupportedProfile(OnconovaTNMSerumTumorMarkerLevelCategory)
* insert ResourceSupportedProfile(OnconovaTNMVenousInvasionCategory)
* insert ResourceSupportedProfile(http://hl7.org/fhir/StructureDefinition/bodyheight)
* insert ResourceSupportedProfile(http://hl7.org/fhir/StructureDefinition/bodyweight)
* insert ResourceSupportedProfile(http://hl7.org/fhir/StructureDefinition/bodytemp)
* insert ResourceSupportedProfile(http://hl7.org/fhir/StructureDefinition/bmi)
* insert ResourceSupportedProfile(http://hl7.org/fhir/StructureDefinition/bp)

// VERB [base]/Procedure/[id]
* insert ResourceCRUD(Procedure)
* insert ResourceSupportedProfile(OnconovaSurgicalProcedure)
* insert ResourceSupportedProfile(OnconovaRadiotherapyCourseSummary)
* insert ResourceSupportedProfile(OnconovaTumorBoardReview)
* insert ResourceSupportedProfile(OnconovaMolecularTumorBoardReview)

// VERB [base]/MedicationAdministration/[id]
* insert ResourceCRUD(MedicationAdministration)
* insert ResourceSupportedProfile(OnconovaMedicationAdministration)


// VERB [base]/AdverseEvent/[id]
* insert ResourceCRUD(AdverseEvent)
* insert ResourceSupportedProfile(OnconovaAdverseEvent)

// VERB [base]/FamilyHistory/[id]
* insert ResourceCRUD(FamilyHistory)
* insert ResourceSupportedProfile(OnconovaCancerFamilyMemberHistory)

// VERB [base]/List/[id]
* rest[=].resource[+].type = #List
* rest[=].resource[=].referencePolicy[+] = $RefPolicy#literal
* rest[=].resource[=].interaction[+].code = #read
* insert ResourceSupportedProfile(OnconovaTherapyLine)