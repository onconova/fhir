# ICD-O-3 Differentiation - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-O-3 Differentiation**

## ValueSet: ICD-O-3 Differentiation 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-differentiation | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:ICDO3Differentiation |

 
A value set of ICD-O-3 differentiation codes. 

 **References** 

* [Recurrence Type](StructureDefinition-onconova-ext-differentiation.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://terminology.hl7.org/CodeSystem/icd-o-3`](http://terminology.hl7.org/6.2.0/CodeSystem-icd-o-3.html)version Not Stated (use latest from terminology server)

 

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
  "id" : "onconova-vs-icdo3-differentiation",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-differentiation",
  "version" : "0.2.0",
  "name" : "ICDO3Differentiation",
  "title" : "ICD-O-3 Differentiation",
  "status" : "active",
  "date" : "2025-11-22T09:54:31+00:00",
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
  "description" : "A value set of ICD-O-3 differentiation codes.",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
      }
    ]
  }
}

```
