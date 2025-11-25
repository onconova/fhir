# Expected Drug Effects Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Expected Drug Effects Value Set**

## ValueSet: Expected Drug Effects Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-expected-drug-effects | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:ExpectedDrugEffects |

 
Collection of expected effects when a drug is administered. 

 **References** 

* [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 2 concepts

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
  "id" : "onconova-vs-expected-drug-effects",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-expected-drug-effects",
  "version" : "0.2.0",
  "name" : "ExpectedDrugEffects",
  "title" : "Expected Drug Effects Value Set",
  "status" : "active",
  "date" : "2025-11-25T10:34:25+00:00",
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
  "description" : "Collection of expected effects when a drug is administered.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "58848006",
            "display" : "Lack of drug action"
          },
          {
            "code" : "110280000",
            "display" : "Therapeutic drug effect"
          }
        ]
      }
    ]
  }
}

```
