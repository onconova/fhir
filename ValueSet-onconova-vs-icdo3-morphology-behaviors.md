# ICD-O-3 Morphology Behavior Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-O-3 Morphology Behavior Value Set**

## ValueSet: ICD-O-3 Morphology Behavior Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behaviors | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:ICDO3MorphologyBehaviors |

 
The subset of ICD-O-3 concepts dedicated for describing morphology behavior. 

 **References** 

* [Family Member History Cancer Morphology](StructureDefinition-onconova-ext-family-history-member-cancer-morphology.md)
* [Primary Cancer Condition Profile](StructureDefinition-onconova-primary-cancer-condition.md)
* [Secondary Cancer Condition Profile](StructureDefinition-onconova-secondary-cancer-condition.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://terminology.hl7.org/CodeSystem/icd-o-3`](http://terminology.hl7.org/6.2.0/CodeSystem-icd-o-3.html)version Not Stated (use latest from terminology server)

 

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
  "id" : "onconova-vs-icdo3-morphology-behaviors",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-icdo3-morphology-behaviors",
  "version" : "0.2.0",
  "name" : "ICDO3MorphologyBehaviors",
  "title" : "ICD-O-3 Morphology Behavior Value Set",
  "status" : "active",
  "date" : "2025-12-04T10:18:27+00:00",
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
  "description" : "The subset of ICD-O-3 concepts dedicated for describing morphology behavior.",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
      }
    ]
  }
}

```
