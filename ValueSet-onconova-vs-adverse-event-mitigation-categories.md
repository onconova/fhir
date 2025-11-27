# Adverse Event Mitigation Categories Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation Categories Value Set**

## ValueSet: Adverse Event Mitigation Categories Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-categories | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:AdverseEventMitigationCategories |

 
Categories of actions taken to mitigate or manage adverse events in oncology. 

 **References** 

* [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 0 concepts

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
  "id" : "onconova-vs-adverse-event-mitigation-categories",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-categories",
  "version" : "0.2.0",
  "name" : "AdverseEventMitigationCategories",
  "title" : "Adverse Event Mitigation Categories Value Set",
  "status" : "active",
  "date" : "2025-11-27T10:13:46+00:00",
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
  "description" : "Categories of actions taken to mitigate or manage adverse events in oncology.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C49157",
            "display" : "Adjustment"
          },
          {
            "code" : "C49158",
            "display" : "Drug"
          },
          {
            "code" : "C49159",
            "display" : "Procedure"
          }
        ]
      }
    ]
  }
}

```
