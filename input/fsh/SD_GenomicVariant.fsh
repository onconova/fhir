Profile: OnconovaGenomicVariant
Parent: GenomicVariant
Id: onconova-genomic-variant
Title: "Genomic Variant Profile"
Description: """
A profile representing a genomic variant identified for a cancer patient. 

This profile extends the base mCODE [GenomicVariant profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-variant) (which in turn profiles the Genomics Reporting [Variant profile](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)) to include specific constraints and extensions relevant to Onconova.

**Conformance:**

Observation resources representing a genomic variant in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject 1..1 MS
* subject only Reference(OnconovaCancerPatient)
* insert Obligations(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "Clinically-relevant date of the genomic variant (e.g. the specimen collection date)"
* insert Obligations(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* extension contains GenomicVariantAssessmentDate named genomic-variant-assessment-date 0..1 MS
* insert Obligations(extension[genomic-variant-assessment-date], #SHALL:populate, #SHOULD:persist)

* insert CreateComponent(clinical-relevance, 1, 1) 
* component[clinical-relevance] ^short = "Clinical relevance of the genomic variant"
* component[clinical-relevance].code = $LOINC#LL4034-6 "ACMG_Clinical significance of genetic variation"
* component[clinical-relevance].value[x] only CodeableConcept
* component[clinical-relevance].valueCodeableConcept from ClinicalRelevances (required)
* insert Obligations(component[clinical-relevance], #SHALL:populate, #SHOULD:persist)

* insert CreateComponent(nucleotides-count, 1, 1) 
* component[nucleotides-count] ^short = "Length of of the variant in nNucleotides"
* component[nucleotides-count].code = $NCIT#C709 "Nucleotides"
* component[nucleotides-count].value[x] only integer
* insert Obligations(component[nucleotides-count], #MAY:ignore, #MAY:persist)

* insert CreateComponent(gene-region, 0, *)
* component[gene-region] ^short = "Region (exon, intron, etc.) of the gene affected by the variant"
* component[gene-region].code = $NCIT#C13445  "Gene Feature"
* component[gene-region].value[x] only string
* insert Obligations(component[gene-region], #SHALL:populate, #SHOULD:persist)

* insert CreateComponent(gene-panel-sequencing, 0, 1)
* component[gene-panel-sequencing].code = $NCIT#C165600  "Tumor Panel Sequencing"
* component[gene-panel-sequencing].value[x] ^short = "Sequencing Gene Panel"
* component[gene-panel-sequencing].value[x] only string
* insert Obligations(component[gene-panel-sequencing], #SHOULD:populate-if-known, #SHOULD:persist)

// Annotate the HGVS version used
* insert CreateComponent(hgvs-version, 1, 1)
* component[hgvs-version] ^short = "HGVS Version"
* component[hgvs-version].code = $LOINC#81303-0  "HGVS version [ID]"
* component[hgvs-version].value[x] only string
* insert Obligations(component[hgvs-version], #SHALL:populate, #SHOULD:persist)

* component[coding-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvs-version component}) 'c.' string, e.g. NM_005228.5:c.2369C>T"
* insert Obligations(component[coding-hgvs], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(rna-hgvs, 0, 1)
* component[rna-hgvs].code = $TBD#rna-hgvs "Transcript RNA change (rHGVS)"
* component[rna-hgvs].value[x] only CodeableConcept
* component[rna-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvs-version component}) 'r.' string, e.g. NM_005228.5:r.2369c>t"
* insert Obligations(component[rna-hgvs], #SHOULD:populate-if-known, #SHOULD:persist)

* component[protein-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvs-version component}) 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"
* insert Obligations(component[protein-hgvs], #SHALL:populate-if-known, #SHOULD:persist)

* component[genomic-hgvs].value[x] ^short = "A valid HGVS-formatted (version >= {hgvs-version component}) 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"
* insert Obligations(component[genomic-hgvs], #SHALL:populate-if-known, #SHOULD:persist)

* component[amino-acid-change-type].valueCodeableConcept from AminoAcidChangeTypes (required)
* insert Obligations(component[amino-acid-change-type], #MAY:ignore, #MAY:persist)

* component[coding-change-type].valueCodeableConcept from DNAChangeTypes (required)
* insert Obligations(component[coding-change-type], #MAY:ignore, #MAY:persist)

* insert Obligations(component[reference-sequence-assembly], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[coordinate-system], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[genomic-source-class], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[sample-allelic-frequency], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[allelic-read-depth], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[allelic-state], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[variant-inheritance], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[variation-code], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[variant-confidence-status], #SHOULD:populate-if-known, #MAY:persist)
* insert Obligations(component[copy-number], #SHALL:populate-if-known, #MAY:persist)
* insert Obligations(component[cytogenetic-location], #MAY:ignore, #MAY:persist)
* insert Obligations(component[genomic-ref-seq], #MAY:ignore, #MAY:persist)
* insert Obligations(component[transcript-ref-seq], #MAY:ignore, #MAY:persist)
* insert Obligations(component[exact-start-end], #MAY:ignore, #MAY:persist)
* insert Obligations(component[outer-start-end], #MAY:ignore, #MAY:persist)
* insert Obligations(component[inner-start-end], #MAY:ignore, #MAY:persist)
* insert Obligations(component[chromosome-identifier], #MAY:ignore, #MAY:persist)
* insert Obligations(component[molecular-consequence], #MAY:ignore, #MAY:persist)
* insert Obligations(component[gene-region], #MAY:ignore, #MAY:persist)


* insert NotUsed(component[ref-allele])
* insert NotUsed(component[alt-allele])
* insert NotUsed(component[conclusion-string])
* insert NotUsed(status)
* insert NotUsed(focus)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(performer)
* insert NotUsed(bodySite)
* insert NotUsed(interpretation)
* insert NotUsed(specimen)
* insert NotUsed(device)    
* insert NotUsed(referenceRange)
* insert NotUsed(hasMember)

* obeys o-var-req-1 and o-var-req-2 and o-var-req-3 and o-var-req-4

//==============================
// Invariants 
//==============================

Invariant: o-var-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists()"
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

Extension: GenomicVariantAssessmentDate
Id: onconova-ext-genomic-variant-assessment-date
Title: "Genomic Variant Assessment Date"
Description: "Date at which the genomic variant was assessed and/or reported."
Context: GenomicVariant.extension
* value[x] only dateTime
