# Adverse Event Mitigation - Procedures - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation - Procedures**

## ValueSet: Adverse Event Mitigation - Procedures 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-procedures | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:AdverseEventMitigationProcedures |

 
Procedures undertaken to mitigate the impact of an adverse event on a patient's health. 

 **References** 

* [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 6 concepts

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
  "id" : "onconova-vs-adverse-event-mitigation-procedures",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-procedures",
  "version" : "0.1.0",
  "name" : "AdverseEventMitigationProcedures",
  "title" : "Adverse Event Mitigation - Procedures",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
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
  "description" : "Procedures undertaken to mitigate the impact of an adverse event on a patient's health.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "387713003",
            "display" : "Surgery"
          },
          {
            "code" : "116762002",
            "display" : "Administration of blood product"
          },
          {
            "code" : "31847002",
            "display" : "Hyperthermia treatment"
          },
          {
            "code" : "26782000",
            "display" : "Cryotherapy"
          },
          {
            "code" : "75516001",
            "display" : "Psychotherapy"
          },
          {
            "code" : "74964007",
            "display" : "Other"
          }
        ]
      },
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C116433",
            "display" : "Palliative Radiation Therapy"
          }
        ]
      }
    ]
  }
}

```
