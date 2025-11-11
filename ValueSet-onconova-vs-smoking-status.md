# Smoking status - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Smoking status**

## ValueSet: Smoking status 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-smoking-status | *Version*:0.2.0 |
| Active as of 2025-11-11 | *Computable Name*:SmokingStatus |

 
Smoking status of a patient 

 **References** 

* [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md)

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
  "id" : "onconova-vs-smoking-status",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-smoking-status",
  "version" : "0.2.0",
  "name" : "SmokingStatus",
  "title" : "Smoking status",
  "status" : "active",
  "date" : "2025-11-11T12:30:26+00:00",
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
  "description" : "Smoking status of a patient",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "266919005",
            "display" : "Never smoked tobacco"
          },
          {
            "code" : "266927001",
            "display" : "Tobacco smoking consumption unknown"
          },
          {
            "code" : "428041000124106",
            "display" : "Occasional tobacco smoker"
          },
          {
            "code" : "428061000124105",
            "display" : "Light tobacco smoker"
          },
          {
            "code" : "428071000124103",
            "display" : "Heavy tobacco smoker"
          },
          {
            "code" : "449868002",
            "display" : "Smokes tobacco daily"
          },
          {
            "code" : "77176002",
            "display" : "Smoker"
          },
          {
            "code" : "8517006",
            "display" : "Ex-smoker"
          }
        ]
      }
    ]
  }
}

```
