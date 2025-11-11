# Cause of Death Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause of Death Value Set**

## ValueSet: Cause of Death Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-causes-of-death | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:CausesOfDeath |

 
The causes of death that are relevant for a cancer patient. 

 **References** 

* [Cause of Death](StructureDefinition-onconova-ext-cause-of-death.md)

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
  "id" : "onconova-vs-causes-of-death",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-causes-of-death",
  "version" : "0.2.0",
  "name" : "CausesOfDeath",
  "title" : "Cause of Death Value Set",
  "status" : "active",
  "date" : "2025-11-11T12:47:38+00:00",
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
  "description" : "The causes of death that are relevant for a cancer patient.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C48275",
            "display" : "Death Related to Adverse Event"
          },
          {
            "code" : "C82466",
            "display" : "Death by Undetermined Cause"
          },
          {
            "code" : "C168970",
            "display" : "Death due to Disease Progression"
          },
          {
            "code" : "C82465",
            "display" : "Death by Natural Cause"
          },
          {
            "code" : "C90351",
            "display" : "Accidental Death"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "15355001",
            "display" : "Unattended death"
          }
        ]
      }
    ]
  }
}

```
