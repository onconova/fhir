# Amino Acid Change Type Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Amino Acid Change Type Value Set**

## ValueSet: Amino Acid Change Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-amino-acid-change-types | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:AminoAcidChangeTypes |

 
Amino acid change types due to a genomic variant. It constraints and expands the original[LOINC Answer List LL380-7](https://loinc.org/LL380-7/)to enforce Onconova-compatible codes 

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
  "id" : "onconova-vs-amino-acid-change-types",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-amino-acid-change-types",
  "version" : "0.2.0",
  "name" : "AminoAcidChangeTypes",
  "title" : "Amino Acid Change Type Value Set",
  "status" : "active",
  "date" : "2025-12-04T07:07:35+00:00",
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
  "description" : "Amino acid change types due to a genomic variant. It constraints and expands the original [LOINC Answer List LL380-7](https://loinc.org/LL380-7/) to enforce Onconova-compatible codes",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA6698-0",
            "display" : "Missense"
          },
          {
            "code" : "LA6699-8",
            "display" : "Nonsense"
          },
          {
            "code" : "LA9659-9",
            "display" : "Insertion and Deletion"
          },
          {
            "code" : "LA6687-3",
            "display" : "Insertion"
          },
          {
            "code" : "LA6692-3",
            "display" : "Deletion"
          },
          {
            "code" : "LA6686-5",
            "display" : "Duplication"
          },
          {
            "code" : "LA6694-9",
            "display" : "Frameshift"
          },
          {
            "code" : "LA6701-2",
            "display" : "Stop Codon Mutation"
          },
          {
            "code" : "LA6700-4",
            "display" : "Silent"
          }
        ]
      },
      {
        "system" : "http://sequenceontology.org",
        "concept" : [
          {
            "code" : "SO:0002395",
            "display" : "lost_polypeptide"
          },
          {
            "code" : "SO:0001068",
            "display" : "polypeptide_repeat"
          }
        ]
      }
    ]
  }
}

```
