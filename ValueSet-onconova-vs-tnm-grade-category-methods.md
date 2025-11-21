# TNM Grade Category Methods Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Grade Category Methods Value Set**

## ValueSet: TNM Grade Category Methods Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tnm-grade-category-methods | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:TNMGradeCategoryMethods |

 
TNM Grade Category Methods Value Set 

 **References** 

* [TNM Grade Category](StructureDefinition-onconova-tnm-grade-category.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 3 concepts

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
  "id" : "onconova-vs-tnm-grade-category-methods",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tnm-grade-category-methods",
  "version" : "0.2.0",
  "name" : "TNMGradeCategoryMethods",
  "title" : "TNM Grade Category Methods Value Set",
  "status" : "active",
  "date" : "2025-11-21T12:46:13+00:00",
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
  "description" : "TNM Grade Category Methods Value Set",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "1222598000"
          },
          {
            "code" : "1222599008"
          },
          {
            "code" : "1222600006"
          }
        ]
      }
    ]
  }
}

```
