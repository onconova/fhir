# Adjunctive Therapy Roles - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adjunctive Therapy Roles**

## ValueSet: Adjunctive Therapy Roles 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adjunctive-therapy-roles | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:AdjunctiveTherapyRoles |

 
Codes representing roles for adjunctive therapy in oncology. 

 **References** 

* [Adjunctive Role](StructureDefinition-onconova-ext-adjunctive-role.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 1 concepts

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
  "id" : "onconova-vs-adjunctive-therapy-roles",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adjunctive-therapy-roles",
  "version" : "0.2.0",
  "name" : "AdjunctiveTherapyRoles",
  "title" : "Adjunctive Therapy Roles",
  "status" : "active",
  "date" : "2025-11-21T14:06:51+00:00",
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
  "description" : "Codes representing roles for adjunctive therapy in oncology.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C15688",
            "display" : "Maintenance"
          },
          {
            "code" : "C2140",
            "display" : "Adjuvant"
          },
          {
            "code" : "C15665",
            "display" : "Neoadjuvant"
          },
          {
            "code" : "C28374",
            "display" : "Perioperative"
          },
          {
            "code" : "C63495",
            "display" : "Additive"
          },
          {
            "code" : "C15679",
            "display" : "Consolidation"
          }
        ]
      }
    ]
  }
}

```
