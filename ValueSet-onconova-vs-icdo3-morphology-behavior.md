# ICD-O-3 Morphology Behavior - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-O-3 Morphology Behavior**

## ValueSet: ICD-O-3 Morphology Behavior 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behavior | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:ICDO3MorphologyBehavior |

 
A value set of ICD-O-3 morphology behavior codes. 

 **References** 

* [Cancer Morphology](StructureDefinition-onconova-ext-cancer-morphology.md)
* [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)
* [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://terminology.hl7.org/CodeSystem/icd-o-3`](http://terminology.hl7.org/6.5.0/CodeSystem-icd-o-3.html)version Not Stated (use latest from terminology server)

 

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
  "id" : "onconova-vs-icdo3-morphology-behavior",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behavior",
  "version" : "0.1.0",
  "name" : "ICDO3MorphologyBehavior",
  "title" : "ICD-O-3 Morphology Behavior",
  "status" : "active",
  "date" : "2025-10-15T15:04:18+00:00",
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
  "description" : "A value set of ICD-O-3 morphology behavior codes.",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
      }
    ]
  }
}

```
