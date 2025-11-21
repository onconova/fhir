# Antineoplastic Agents - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antineoplastic Agents**

## ValueSet: Antineoplastic Agents 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-antineoplastic-agents | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:AntineoplasticAgents |

 
A value set of antineoplastic agents. 

 **References** 

* [Molecular Tumor Board Therapeutic Recommendation](StructureDefinition-onconova-ext-molecular-tumor-board-therapeutic-recommendation.md)
* [Medication Administration Profile](StructureDefinition-onconova-medication-administration.md)

### Logical Definition (CLD)

* Include codes from[`http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl`](http://terminology.hl7.org/6.2.0/CodeSystem-v3-nciThesaurus.html)version Not Stated (use latest from terminology server) where Concept_In_Subset = C128784

 

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
  "id" : "onconova-vs-antineoplastic-agents",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-antineoplastic-agents",
  "version" : "0.2.0",
  "name" : "AntineoplasticAgents",
  "title" : "Antineoplastic Agents",
  "status" : "active",
  "date" : "2025-11-21T06:40:28+00:00",
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
  "description" : "A value set of antineoplastic agents.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "filter" : [
          {
            "property" : "Concept_In_Subset",
            "op" : "=",
            "value" : "C128784"
          }
        ]
      }
    ]
  }
}

```
