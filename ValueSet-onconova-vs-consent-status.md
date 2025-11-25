# Consent Status Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent Status Value Set**

## ValueSet: Consent Status Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-consent-status | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:ConsentStatus |

 
The consent status of a patient for further use of data in research. 

 **References** 

* [Cancer Patient Consent status](StructureDefinition-onconova-ext-cancer-patient-consent-status.md)

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
  "id" : "onconova-vs-consent-status",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-consent-status",
  "version" : "0.2.0",
  "name" : "ConsentStatus",
  "title" : "Consent Status Value Set",
  "status" : "active",
  "date" : "2025-11-25T10:34:25+00:00",
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
  "description" : "The consent status of a patient for further use of data in research.",
  "compose" : {
    "include" : [
      {
        "system" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-consent-status",
        "concept" : [
          {
            "code" : "valid",
            "display" : "Valid"
          },
          {
            "code" : "revoked",
            "display" : "Revoked"
          },
          {
            "code" : "unknown",
            "display" : "Unknown"
          }
        ]
      }
    ]
  }
}

```
