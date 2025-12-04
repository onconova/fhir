# Recurrence Types Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recurrence Types Value Set**

## ValueSet: Recurrence Types Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-recurrence-types | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:RecurrenceTypes |

 
A value set representing the types of cancer recurrence, specifically local and regional recurrences. 

 **References** 

* [Primary Cancer Recurrence Type](StructureDefinition-onconova-ext-primary-cancer-recurrence-type.md)

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
  "id" : "onconova-vs-recurrence-types",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-recurrence-types",
  "version" : "0.2.0",
  "name" : "RecurrenceTypes",
  "title" : "Recurrence Types Value Set",
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
  "description" : "A value set representing the types of cancer recurrence, specifically local and regional recurrences.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "255470001",
            "display" : "Local (qualifier value)"
          },
          {
            "code" : "410674003",
            "display" : "Regional (qualifier value)"
          }
        ]
      }
    ]
  }
}

```
