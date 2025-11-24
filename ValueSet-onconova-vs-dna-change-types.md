# Coding DNA Change Types Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coding DNA Change Types Value Set**

## ValueSet: Coding DNA Change Types Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-dna-change-types | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:DNAChangeTypes |

 
Coding DNA change types due to a genomic variant. It constraints and expands the original[LOINC Answer List LL380-7](https://loinc.org/LL380-7/)to enforce Onconova-compatible codes 

 **References** 

* [Genomic Variant Profile](StructureDefinition-onconova-genomic-variant.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "onconova-vs-dna-change-types",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-dna-change-types",
  "version" : "0.2.0",
  "name" : "DNAChangeTypes",
  "title" : "Coding DNA Change Types Value Set",
  "status" : "active",
  "date" : "2025-11-24T08:19:06+00:00",
  "publisher" : "Onconova",
  "contact" : [
    {
      "name" : "Onconova",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://onconova.github.io/docs"
        }
      ]
    }
  ],
  "description" : "Coding DNA change types due to a genomic variant. It constraints and expands the original [LOINC Answer List LL380-7](https://loinc.org/LL380-7/) to enforce Onconova-compatible codes",
  "compose" : {
    "include" : [
      {
        "system" : "http://sequenceontology.org",
        "concept" : [
          {
            "code" : "SO:1000002",
            "display" : "substitution"
          },
          {
            "code" : "SO:1000032",
            "display" : "delins"
          },
          {
            "code" : "SO:0000667",
            "display" : "insertion"
          },
          {
            "code" : "SO:0000159",
            "display" : "deletion"
          },
          {
            "code" : "SO:1000035",
            "display" : "duplication"
          },
          {
            "code" : "SO:1000036",
            "display" : "inversion"
          },
          {
            "code" : "SO:0002073",
            "display" : "no_sequence_alteration"
          },
          {
            "code" : "SO:0002096",
            "display" : "short_tandem_repeat_variation"
          },
          {
            "code" : "SO:0000199",
            "display" : "translocation"
          },
          {
            "code" : "SO:0000453",
            "display" : "transposition"
          }
        ]
      },
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C17961",
            "display" : "DNA Methylation"
          }
        ]
      }
    ]
  }
}

```
