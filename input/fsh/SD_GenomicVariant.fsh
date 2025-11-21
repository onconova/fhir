Profile: OnconovaGenomicVariant
Parent: GenomicVariant
Id: onconova-genomic-variant
Title: "Genomic Variant Profile"
Description: """
A profile representing a genomic variant identified for a cancer patient. 

This profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova.
"""

* status = #final
* effective[x] only dateTime
* effective[x] ^short = "Clinically-relevant date of the genomic variant (e.g. the specimen collection date)"
* subject only Reference(OnconovaCancerPatient)

* extension contains GenomicAssessmentDate named genomic-assessment-date 0..1


// Add component to record the length of the variant in nucleotides
* insert CreateComponent(clinical-relevance, 1, 1) 
* component[clinical-relevance] ^short = "Clinical relevance of the genomic variant"
* component[clinical-relevance].code = $LOINC#LL4034-6 "ACMG_Clinical significance of genetic variation"
* component[clinical-relevance].value[x] only CodeableConcept
* component[clinical-relevance].valueCodeableConcept from https://loinc.org/LL4034-6/ (required)


// Add component to record the length of the variant in nucleotides
* insert CreateComponent(nucleotides-count, 1, 1) 
* component[nucleotides-count] ^short = "Length of of the variant in nNucleotides"
* component[nucleotides-count].code = $NCIT#C709 "Nucleotides"
* component[nucleotides-count].value[x] only integer

// Add extension to record the affected gene regions
* insert CreateComponent(gene-region, 1, 1)
* component[gene-region] ^short = "Region (exon, intron, etc.) of the gene affected by the variant"
* component[gene-region].code = $NCIT#C13445  "Gene Feature"
* component[gene-region].value[x] only string

// Add extension to record the RNA HGVS expression
* insert CreateComponent(rna-hgvs, 0, 1)
* component[rna-hgvs].code = $TBD#rna-hgvs "Transcript RNA change (rHGVS)"
* component[rna-hgvs].value[x] only CodeableConcept

// Add extension to record the gene panel
* insert CreateComponent(gene-panel-sequencing, 0, 1)
* component[gene-panel-sequencing].code = $NCIT#C165600  "Tumor Panel Sequencing"
* component[gene-panel-sequencing].value[x] ^short = "Sequencing Gene Panel"
* component[gene-panel-sequencing].value[x] only string

// Annotate the HGVS version used
* insert CreateComponent(hgvs-version, 1, 1)
* component[hgvs-version] ^short = "HGVS Version"
* component[hgvs-version].code = $LOINC#81303-0  "HGVS version [ID]"
* component[hgvs-version].value[x] only string
* component[coding-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvsVersion component}) 'c.' string, e.g. NM_005228.5:c.2369C>T"
* component[rna-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvsVersion component}) 'r.' string, e.g. NM_005228.5:r.2369c>t"
* component[protein-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvsVersion component}) 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"
* component[genomic-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvsVersion component}) 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"

* component[amino-acid-change-type].valueCodeableConcept from AminoAcidChangeTypeVS (required)
* component[coding-change-type].valueCodeableConcept from DNAChangeTypeVS (required)

// Constraints 
* obeys o-var-req-1 and 
    o-var-req-2 and
    o-var-req-3 and 
    o-var-req-4

//==============================
// Invariants 
//==============================

Invariant: o-var-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-var-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-var-req-3
Description: "The genes extension is required and must be provided."
Expression: "component.where(code.coding.code = '48018-6').exists()"
Severity: #error

Invariant: o-var-req-4
Description: "At least one HGVS representation (coding, protein, or genomic) must be provided."
Expression: "component.where(code.coding.code = '48004-6').exists() or component.where(code.coding.code = '81290-9').exists() or component.where(code.coding.code = '48005-3').exists()"
Severity: #error

Invariant: o-var-req-5
Description: "The HGVS version component is required and must be provided."
Expression: "component.where(code.coding.code = '81303-0').exists()"
Severity: #error

//============================
// Extensions
//============================

Extension: GenomicAssessmentDate
Id: onconova-ext-genomic-assessment-date
Title: "Genomic Assessment Date"
Description: "Date at which the genomic variant was assessed and/or reported."
* value[x] only dateTime
