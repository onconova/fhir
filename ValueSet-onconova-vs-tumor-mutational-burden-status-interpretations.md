# Tumor Mutational Burden Status Interpretation Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Mutational Burden Status Interpretation Value Set**

## ValueSet: Tumor Mutational Burden Status Interpretation Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-mutational-burden-status-interpretations | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:TumorMutationalBurdenStatusInterpretations |

 
The categorical classifications of the TMB status interpreted from its value.. 

 **References** 

* [Tumor Mutational Burden Status](StructureDefinition-onconova-ext-tumor-mutational-burden-status.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "onconova-vs-tumor-mutational-burden-status-interpretations",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-mutational-burden-status-interpretations",
  "version" : "0.2.0",
  "name" : "TumorMutationalBurdenStatusInterpretations",
  "title" : "Tumor Mutational Burden Status Interpretation Value Set",
  "status" : "active",
  "date" : "2025-12-04T10:18:27+00:00",
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
  "description" : "The categorical classifications of the TMB status interpreted from its value..",
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs"
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "concept" : [
          {
            "code" : "IND",
            "display" : "Indeterminate"
          }
        ]
      }
    ]
  }
}

```
