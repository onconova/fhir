RuleSet: GenomicSignatureNotUsed
* insert NotUsed(status)
* insert NotUsed(focus)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(performer)
* insert NotUsed(bodySite)
* insert NotUsed(specimen)
* insert NotUsed(device)    
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)
* insert NotUsed(component)

Profile: OnconovaTumorMutationalBurden  
Parent: TMB
Id: onconova-tumor-mutational-burden
Title: "Tumor Mutational Burden Profile"
Description: """
A profile representing tumor mutational burden for a cancer patient. 

This profile extends the GenomicsReporting IG [TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a tumor mutational burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* valueQuantity 1..1 MS
* insert Obligations(valueQuantity, #SHALL:populate, #SHOULD:persist)

* extension contains TumorMutationalBurdenStatus named status 0..1 MS
* insert Obligations(extension[status], #SHOULD: populate-if-known, #SHOULD:persist)

* insert GenomicSignatureNotUsed
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3

ValueSet: TumorMutationalBurdenStatusInterpretations
Id: onconova-vs-tumor-mutational-burden-status-interpretation
Title: Tumor Mutational Burden Status Interpretation Value Set"
Description:  "The categorical classifications of the TMB status interpreted from its value.."
* include codes from valueset http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#IND "Indeterminate"

Extension: TumorMutationalBurdenStatus
Id: onconova-ext-tumor-mutational-burden-status
Title: "Tumor Mutational Burden Status"
Description: "The categorical classification of the TMB status interpreted from its value."
Context: OnconovaTumorMutationalBurden.extension
* value[x] only CodeableConcept
* valueCodeableConcept from TumorMutationalBurdenStatusInterpretations (required)


Profile: OnconovaMicrosatelliteInstability
Parent: MSI
Id: onconova-microsatellite-instability
Title: "Microsatellite Instability Profile"
Description: """
A profile representing microsatellite instability for a cancer patient. 

This profile extends the GenomicsReporting IG [MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a microsatellite instability obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* valueCodeableConcept 1..1 MS
* insert Obligations(valueCodeableConcept, #SHALL:populate, #SHOULD:persist)

* insert GenomicSignatureNotUsed
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-4


Profile: OnconovaLossOfHeterozygosity
Parent: GenomicsBase
Id: onconova-loss-of-heterozygosity
Title: "Loss of Heterozygosity Profile"
Description: """
A profile representing loss of heterozygosity for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a loss of heterozygosity obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""


* code = $NCIT#C18016 "Loss of Heterozygosity"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code = #%
* insert Obligations(valueQuantity, #SHALL:populate, #SHOULD:persist)

* insert GenomicSignatureNotUsed
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaHomologousRecombinationDeficiency
Parent: GenomicsBase
Id: onconova-homologous-recombination-deficiency
Title: "Homologous Recombination Deficiency Profile"
Description: """
A profile representing homologous recombination deficiency for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a homologous recombination deficiency obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $NCIT#C120465 "Homologous Recombination Deficiency"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* insert Obligations(valueQuantity, #SHALL:populate, #SHOULD:persist)

* interpretation 0..1 MS
* interpretation from http://loinc.org/vs/LL2038-9 (required)
* insert Obligations(interpretation, #SHOULD:populate-if-known, #MAY:persist)

* insert GenomicSignatureNotUsed
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaTumorNeoantigenBurden
Parent: GenomicsBase
Id: onconova-tumor-neoantigen-burden
Title: "Tumor Neoantigen Burden Profile"
Description: """
A profile representing tumor neoantigen burden for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a tumor neoantigen burden obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $TBD#tumor-neoantigen-burden "Tumor Neoantigen Burden"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* value[x] only Quantity 
* valueQuantity 1..1 MS
* valueQuantity.system = $UCUM
* valueQuantity.code = #1/1000000{Neoantigen}
* insert Obligations(valueQuantity, #SHALL:populate, #SHOULD:persist)

* insert GenomicSignatureNotUsed
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaAneuploidScore
Parent: GenomicsBase
Id: onconova-aneuploid-score
Title: "Aneuploid Score Profile"
Description: """
A profile representing aneuploid score for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing an aneuploid score obtained through genomic testing in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $TBD#aneuploid-score "Aneuploid Score"

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* subject ^short = "The cancer patient associated with this signature"
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* value[x] only Quantity
* valueQuantity 1..1 MS
* valueQuantity.system = $UCUM
* valueQuantity.code = #1
* insert Obligations(valueQuantity, #SHALL:populate, #SHOULD:persist)

* insert GenomicSignatureNotUsed
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Invariant: o-sig-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-sig-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-sig-req-3
Description: "The valueQuantity element is required and must be provided."
Expression: "valueQuantity.exists()"
Severity: #error

Invariant: o-sig-req-4
Description: "The valueCodeableConcept element is required and must be provided."
Expression: "valueCodeableConcept.exists() and valueCodeableConcept.coding.exists()"
Severity: #error
