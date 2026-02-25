# ICD-O-3 Topographies Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-O-3 Topographies Value Set**

## ValueSet: ICD-O-3 Topographies Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topographies | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:ICDO3Topographies |

 
The subset of ICD-O-3 concepts dedicated for describing morphology topographies. 

 **References** 

* [Family Member History Cancer Topography](StructureDefinition-onconova-ext-family-history-member-cancer-topography.md)
* [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)
* [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

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
  "id" : "onconova-vs-icdo3-topographies",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-topographies",
  "version" : "0.2.0",
  "name" : "ICDO3Topographies",
  "title" : "ICD-O-3 Topographies Value Set",
  "status" : "active",
  "date" : "2026-02-25T14:29:35+00:00",
  "publisher" : "Onconova",
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "The subset of ICD-O-3 concepts dedicated for describing morphology topographies.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
    }]
  }
}

```
