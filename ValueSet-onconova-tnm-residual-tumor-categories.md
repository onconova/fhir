# TNM Residual Tumor Categories Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Residual Tumor Categories Value Set**

## ValueSet: TNM Residual Tumor Categories Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-tnm-residual-tumor-categories | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:TNMResidualTumorCategories |

 
TNM Residual Tumor Categories Value Set 

 **References** 

* [TNM Residual Tumor Category Profile](StructureDefinition-onconova-tnm-residual-tumor-category.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "onconova-tnm-residual-tumor-categories",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-tnm-residual-tumor-categories",
  "version" : "0.2.0",
  "name" : "TNMResidualTumorCategories",
  "title" : "TNM Residual Tumor Categories Value Set",
  "status" : "active",
  "date" : "2026-02-25T15:12:31+00:00",
  "publisher" : "Onconova",
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "TNM Residual Tumor Categories Value Set",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1222601005"
      }]
    }]
  }
}

```
