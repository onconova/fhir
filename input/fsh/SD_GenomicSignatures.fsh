Profile: OnconovaTumorMutationalBurden  
Parent: TMB
Id: onconova-tumor-mutational-burden
Title: "Tumor Mutational Burden Profile"
Description: """
A profile representing tumor mutational burden for a cancer patient. 

This profile extends the GenomicsReporting IG [TumorMutationalBurden profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/tmb) to include specific constraints and extensions relevant to Onconova.
"""

* status = #final
* subject only Reference(OnconovaCancerPatient)
* effective[x] only dateTime
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3

Profile: OnconovaMicrosatelliteInstability
Parent: MSI
Id: onconova-microsatellite-instability
Title: "Microsatellite Instability Profile"
Description: """
A profile representing microsatellite instability for a cancer patient. 

This profile extends the GenomicsReporting IG [MicrosatelliteInstability profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi) to include specific constraints and extensions relevant to Onconova.
"""
* status = #final
* subject only Reference(OnconovaCancerPatient)
* effective[x] only dateTime
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-4


Profile: OnconovaLossOfHeterozygosity
Parent: GenomicsBase
Id: onconova-loss-of-heterozygosity
Title: "Loss of Heterozygosity Profile"
Description: """
A profile representing loss of heterozygosity for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.
"""

* status = #final
* subject only Reference(OnconovaCancerPatient)
* code = $NCIT#C18016 "Loss of Heterozygosity"
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code = $UCUM#%
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaHomologousRecombinationDeficiency
Parent: GenomicsBase
Id: onconova-homologous-recombination-deficiency
Title: "Homologous Recombination Deficiency Profile"
Description: """
A profile representing homologous recombination deficiency for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.
"""
* status = #final
* subject only Reference(OnconovaCancerPatient)
* code = $NCIT#C120465 "Homologous Recombination Deficiency"
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code = $UCUM#1
* interpretation from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL2038-9 (required)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaTumorNeoantigenBurden
Parent: GenomicsBase
Id: onconova-tumor-neoantigen-burden
Title: "Tumor Neoantigen Burden Profile"
Description: """
A profile representing tumor neoantigen burden for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.
"""
* status = #final
* subject only Reference(OnconovaCancerPatient)
* code = $TBD#tumor-neoantigen-burden "Tumor Neoantigen Burden"
* effective[x] only dateTime
* value[x] only Quantity 
* valueQuantity 1..1 
* valueQuantity.system = $UCUM
* valueQuantity.code = $UCUM#1/1000000{Neoantigen}
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


Profile: OnconovaAneuploidScore
Parent: GenomicsBase
Id: onconova-aneuploid-score
Title: "Aneuploid Score Profile"
Description: """
A profile representing aneuploid score for a cancer patient. 

This profile extends the GenomicsReporting IG [GenomicsBase profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-base) to include specific constraints and extensions relevant to Onconova.
"""
* status = #final
* subject only Reference(OnconovaCancerPatient)
* code = $TBD#aneuploid-score "Aneuploid Score"
* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.system = $UCUM
* valueQuantity.code = $UCUM#1
* insert NotUsed(interpretation)
* obeys o-sig-req-1 and o-sig-req-2 and o-sig-req-3


//==============================
// Invariants 
//==============================

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