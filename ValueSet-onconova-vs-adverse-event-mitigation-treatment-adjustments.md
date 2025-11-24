# Adverse Event Mitigation Treatment Adjustments Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation Treatment Adjustments Value Set**

## ValueSet: Adverse Event Mitigation Treatment Adjustments Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-treatment-adjustments | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:AdverseEventMitigationTreatmentAdjustments |

 
Adjustments made to a patient's treatment plan in response to an adverse event. 

 **References** 

* [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md)

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
  "id" : "onconova-vs-adverse-event-mitigation-treatment-adjustments",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-treatment-adjustments",
  "version" : "0.2.0",
  "name" : "AdverseEventMitigationTreatmentAdjustments",
  "title" : "Adverse Event Mitigation Treatment Adjustments Value Set",
  "status" : "active",
  "date" : "2025-11-24T11:19:41+00:00",
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
  "description" : "Adjustments made to a patient's treatment plan in response to an adverse event.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "89925002",
            "display" : "Cancelled"
          },
          {
            "code" : "385655000",
            "display" : "Suspended"
          },
          {
            "code" : "182822000",
            "display" : "Reducing dose prescribed"
          }
        ]
      }
    ]
  }
}

```
