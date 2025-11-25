# Clinical Relevance Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical Relevance Value Set**

## ValueSet: Clinical Relevance Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-clinical-relevances | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:ClinicalRelevances |

 
Categorizations of the clinical relevance of a genomic variant 

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
  "id" : "onconova-vs-clinical-relevances",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-clinical-relevances",
  "version" : "0.2.0",
  "name" : "ClinicalRelevances",
  "title" : "Clinical Relevance Value Set",
  "status" : "active",
  "date" : "2025-11-25T07:35:44+00:00",
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
  "description" : "Categorizations of the clinical relevance of a genomic variant",
  "compose" : {
    "include" : [
      {
        "valueSet" : ["http://loinc.org/LL4034-6/"]
      },
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C70429",
            "display" : "Ambiguity"
          }
        ]
      }
    ]
  }
}

```
