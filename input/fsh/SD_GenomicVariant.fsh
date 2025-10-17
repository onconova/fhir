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
* subject only Reference(OnconovaCancerPatient)

* extension contains GenePanel named genePanel 0..1
* extension[genePanel] ^short = "Gene Panel"

// Add extension to record the length of the variant in nucleotides
* insert CreateComponent(nucleotidesCount, 1, 1) 
* component[nucleotidesCount] ^short = "Length of of the variant in nNucleotides"
* component[nucleotidesCount].code = $NCIT#C709 "Nucleotides"
* component[nucleotidesCount].value[x] only integer

// Add extension to record the length of the variant in nucleotides
* insert CreateComponent(geneRegion, 1, 1)
* component[geneRegion] ^short = "Region (exon, intron, etc.) of the gene affected by the variant"
* component[geneRegion].code = $NCIT#C13445  "Gene Feature"
* component[geneRegion].value[x] only string

// Annotate the HGVS version used
* extension contains HgvsVersion named hgvsVersion 1..1
* extension[hgvsVersion] ^short = "HGVS Version"
* component[coding-hgvs].value[x] ^short = "A valid HGVS-formatted (version >=21.1) 'c.' string, e.g. NM_005228.5:c.2369C>T"
* component[protein-hgvs].value[x] ^short = "A valid HGVS-formatted (version >=21.1) 'p.' string, e.g. NP_000050.2:p.(Asn1836Lys)"
* component[genomic-hgvs].value[x] ^short = "A valid HGVS-formatted (version >=21.1) 'g.' string, e.g. NC_000016.9:g.2124200_2138612dup"

// Constraints 
* obeys o-var-req-1 and 
    o-var-req-2 and
    o-var-req-3 and 
    o-var-req-4

//==============================
// Extensions 
//==============================

Extension: GenePanel
Id: onconova-ext-gene-panel
Title: "Gene Panel"
Description: "Name of the commercial or registered gene panel used for genomic testing."
* value[x] only string

Extension: HgvsVersion
Id: onconova-ext-hgvs-version
Title: "HGVS Version"
Description: "The version of the HGVS nomenclature used for representing the variant."
* value[x] only string  
* valueString = ">=21.1"

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
Description: "The HGVS version extension is required and must be provided."
Expression: "extension.where(url.contains('onconova-ext-hgvs-version')).exists()"
Severity: #error