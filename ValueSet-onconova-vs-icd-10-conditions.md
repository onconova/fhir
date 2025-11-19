# ICD-10 Codes - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-10 Codes**

## ValueSet: ICD-10 Codes 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-icd-10-conditions | *Version*:0.2.0 |
| Active as of 2025-11-19 | *Computable Name*:ICD10Conditions |

 
This value set includes sample ICD-10 codes. 

 **References** 

* [Comorbidities Profile](StructureDefinition-onconova-comorbidities.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://hl7.org/fhir/sid/icd-10`](http://terminology.hl7.org/6.2.0/CodeSystem-icd10.html)version Not Stated (use latest from terminology server)

 

### Expansion

Expansion from tx.fhir.org based on codesystem ICD-10 version 2019-covid-expanded

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

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
  "id" : "onconova-vs-icd-10-conditions",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icd-10-conditions",
  "version" : "0.2.0",
  "name" : "ICD10Conditions",
  "title" : "ICD-10 Codes",
  "status" : "active",
  "date" : "2025-11-19T14:47:01+00:00",
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
  "description" : "This value set includes sample ICD-10 codes.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/sid/icd-10"
      }
    ]
  }
}

```
