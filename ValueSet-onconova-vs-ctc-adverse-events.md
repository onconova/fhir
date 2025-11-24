# CTC Adverse Events Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CTC Adverse Events Value Set**

## ValueSet: CTC Adverse Events Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-ctc-adverse-events | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:CTCAdverseEvents |

 
Adverse events classified according to the Common Terminology Criteria for Adverse Events (CTCAE) 

 **References** 

* [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://terminology.hl7.org/CodeSystem/MDRAE`](http://terminology.hl7.org/6.2.0/CodeSystem-MDRAE.html)version Not Stated (use latest from terminology server)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "onconova-vs-ctc-adverse-events",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-ctc-adverse-events",
  "version" : "0.2.0",
  "name" : "CTCAdverseEvents",
  "title" : "CTC Adverse Events Value Set",
  "status" : "active",
  "date" : "2025-11-24T08:19:06+00:00",
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
  "description" : "Adverse events classified according to the Common Terminology Criteria for Adverse Events (CTCAE)",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/MDRAE"
      }
    ]
  }
}

```
