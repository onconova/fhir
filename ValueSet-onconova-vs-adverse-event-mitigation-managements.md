# Adverse Event Mitigation - Management - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation - Management**

## ValueSet: Adverse Event Mitigation - Management 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-managements | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:AdverseEventMitigationManagements |

 
Classification of actions to mitigate adverse events affecting a patient's health. 

 **References** 

* [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md)

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
  "id" : "onconova-vs-adverse-event-mitigation-managements",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-managements",
  "version" : "0.1.0",
  "name" : "AdverseEventMitigationManagements",
  "title" : "Adverse Event Mitigation - Management",
  "status" : "active",
  "date" : "2025-10-15T15:04:18+00:00",
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
  "description" : "Classification of actions to mitigate adverse events affecting a patient's health.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "737481003",
            "display" : "Inpatient care management"
          },
          {
            "code" : "737492002",
            "display" : "Outpatient care management"
          }
        ]
      }
    ]
  }
}

```
