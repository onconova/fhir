# Treatment Intents Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Treatment Intents Value Set**

## ValueSet: Treatment Intents Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-intents | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:TreatmentIntents |

 
A set of intents for giving a treatment to a cancer patient 

 **References** 

* [Therapy Line Intent](StructureDefinition-onconova-ext-therapy-line-intent.md)
* [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)
* [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md)
* [Surgical Procedure Profile](StructureDefinition-onconova-surgical-procedure.md)

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
  "id" : "onconova-vs-treatment-intents",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-intents",
  "version" : "0.2.0",
  "name" : "TreatmentIntents",
  "title" : "Treatment Intents Value Set",
  "status" : "active",
  "date" : "2025-12-04T10:59:28+00:00",
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
  "description" : "A set of intents for giving a treatment to a cancer patient",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "373808002",
            "display" : "Curative - procedure intent"
          },
          {
            "code" : "363676003",
            "display" : "Palliative  - procedure intent"
          }
        ]
      }
    ]
  }
}

```
