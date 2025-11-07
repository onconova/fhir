# Comorbidity Panels - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comorbidity Panels**

## ValueSet: Comorbidity Panels 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-comorbidity-panels | *Version*:0.2.0 |
| Active as of 2025-11-07 | *Computable Name*:ComorbidityPanels |

 
A collection of comorbidity panels relevant to cancer patients. 

 **References** 

* [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "onconova-vs-comorbidity-panels",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-comorbidity-panels",
  "version" : "0.2.0",
  "name" : "ComorbidityPanels",
  "title" : "Comorbidity Panels",
  "status" : "active",
  "date" : "2025-11-07T05:59:36+00:00",
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
  "description" : "A collection of comorbidity panels relevant to cancer patients.",
  "compose" : {
    "include" : [
      {
        "system" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-comorbidity-panels",
        "concept" : [
          {
            "code" : "charlson"
          },
          {
            "code" : "elixhauser"
          },
          {
            "code" : "nci"
          }
        ]
      }
    ]
  }
}

```
