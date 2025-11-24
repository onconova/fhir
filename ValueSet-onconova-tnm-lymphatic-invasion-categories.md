# TNM Lymphatic Invasion Categories Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Lymphatic Invasion Categories Value Set**

## ValueSet: TNM Lymphatic Invasion Categories Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-tnm-lymphatic-invasion-categories | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:TNMLymphaticInvasionCategories |

 
TNM Lymphatic Invasion Categories Value Set 

 **References** 

* [TNM Lymphatic Invasion Category Profile](StructureDefinition-onconova-tnm-lymphatic-invasion-category.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 4 concepts

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
  "id" : "onconova-tnm-lymphatic-invasion-categories",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-tnm-lymphatic-invasion-categories",
  "version" : "0.2.0",
  "name" : "TNMLymphaticInvasionCategories",
  "title" : "TNM Lymphatic Invasion Categories Value Set",
  "status" : "active",
  "date" : "2025-11-24T09:24:28+00:00",
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
  "description" : "TNM Lymphatic Invasion Categories Value Set",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "44649003",
            "display" : "L0 stage"
          },
          {
            "code" : "74139005",
            "display" : "L1 stage"
          },
          {
            "code" : "72632003",
            "display" : "L2 stage"
          },
          {
            "code" : "33419001",
            "display" : "LX stage"
          }
        ]
      }
    ]
  }
}

```
