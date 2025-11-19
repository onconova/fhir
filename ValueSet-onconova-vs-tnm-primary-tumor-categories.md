# TNM Primary Tumor Categories - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Primary Tumor Categories**

## ValueSet: TNM Primary Tumor Categories 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tnm-primary-tumor-categories | *Version*:0.2.0 |
| Active as of 2025-11-19 | *Computable Name*:TNMPrimaryTumorCategories |

 
TNM Primary Tumor Categories Value Set 

 **References** 

* [TNM Primary Tumor Category](StructureDefinition-onconova-tnm-primary-tumor-category.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Import all the codes that are contained in [TNM Primary Tumor Category Value Set](http://hl7.org/fhir/us/mcode/STU4/ValueSet-mcode-tnm-primary-tumor-category-vs.html)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 1279738002 (American Joint Committee on Cancer rpT category allowable value (qualifier value))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 1279573003 (American Joint Committee on Cancer rcT category allowable value)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [valueset TNM Primary Tumor Category Value Set v4.0.0 (ValueSet)](http://hl7.org/fhir/us/mcode/STU4/ValueSet-mcode-tnm-primary-tumor-category-vs.html)

This value set expansion contains 197 concepts.

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
  "id" : "onconova-vs-tnm-primary-tumor-categories",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tnm-primary-tumor-categories",
  "version" : "0.2.0",
  "name" : "TNMPrimaryTumorCategories",
  "title" : "TNM Primary Tumor Categories",
  "status" : "active",
  "date" : "2025-11-19T14:47:01+00:00",
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
  "description" : "TNM Primary Tumor Categories Value Set",
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "http://hl7.org/fhir/us/mcode/ValueSet/mcode-tnm-primary-tumor-category-vs|4.0.0"
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "1279738002"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "1279573003"
          }
        ]
      }
    ]
  }
}

```
