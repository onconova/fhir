# Treatment Termination Reasons - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Treatment Termination Reasons**

## ValueSet: Treatment Termination Reasons 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-termination-reasons | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:TreatmentTerminationReasons |

 
Codes representing reasons for terminating a treatment in oncology. 

 **References** 

* [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)
* [Radiotherapy Summary Profile](StructureDefinition-onconova-radiotherapy-summary.md)

### Logical Definition (CLD)

 

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
  "id" : "onconova-vs-treatment-termination-reasons",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-termination-reasons",
  "version" : "0.1.0",
  "name" : "TreatmentTerminationReasons",
  "title" : "Treatment Termination Reasons",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
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
  "description" : "Codes representing reasons for terminating a treatment in oncology.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "182992009",
            "display" : "Treatment completed"
          }
        ]
      },
      {
        "valueSet" : [
          "http://hl7.org/fhir/us/mcode/ValueSet/mcode-treatment-termination-reason"
        ]
      }
    ]
  }
}

```
