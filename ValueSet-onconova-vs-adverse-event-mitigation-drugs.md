# Adverse Event Mitigation Drugs Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adverse Event Mitigation Drugs Value Set**

## ValueSet: Adverse Event Mitigation Drugs Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-drugs | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:AdverseEventMitigationDrugs |

 
Drugs or medication categories used in the mitigation process of an adverse event. 

 **References** 

* [Adverse Event Mitigation](StructureDefinition-onconova-ext-adverse-event-mitigation.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 4 concepts

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
  "id" : "onconova-vs-adverse-event-mitigation-drugs",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-adverse-event-mitigation-drugs",
  "version" : "0.2.0",
  "name" : "AdverseEventMitigationDrugs",
  "title" : "Adverse Event Mitigation Drugs Value Set",
  "status" : "active",
  "date" : "2025-12-04T06:46:00+00:00",
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
  "description" : "Drugs or medication categories used in the mitigation process of an adverse event.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "49616005",
            "display" : "Monoclonal antibody"
          },
          {
            "code" : "420693002",
            "display" : "Tumor necrosis factor alpha inhibitor"
          },
          {
            "code" : "409207001",
            "display" : "NK-1 Receptor Antagonist"
          },
          {
            "code" : "1156730006",
            "display" : "Erythropoietin receptor agonist"
          }
        ]
      },
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C2356",
            "display" : "Analgesic and Antipyretic"
          },
          {
            "code" : "C257",
            "display" : "Nonsteroidal Antiinflammatory Drug"
          },
          {
            "code" : "C198",
            "display" : "Acetaminophen"
          },
          {
            "code" : "C170166",
            "display" : "Metamizole Sodium"
          },
          {
            "code" : "C29578",
            "display" : "Histamine-1 Receptor Antagonist"
          },
          {
            "code" : "C126567",
            "display" : "Vasopressor"
          },
          {
            "code" : "C163951",
            "display" : "Anti-IL-6 Monoclonal Antibody"
          },
          {
            "code" : "C128036",
            "display" : "Anti-CTLA-4 Monoclonal Antibody"
          },
          {
            "code" : "C29505",
            "display" : "Topical Corticosteroids"
          },
          {
            "code" : "C122080",
            "display" : "Systemic Corticosteroids"
          },
          {
            "code" : "C278",
            "display" : "Anti-Thymocyte Globulin"
          },
          {
            "code" : "C121331",
            "display" : "Intravenous Immunoglobulin"
          },
          {
            "code" : "C267",
            "display" : "Antiemetics"
          },
          {
            "code" : "C740",
            "display" : "Phenothiazine"
          },
          {
            "code" : "C94726",
            "display" : "5-HT3 Receptor Antagonist"
          },
          {
            "code" : "C20424",
            "display" : "Growth Factors"
          },
          {
            "code" : "C26078",
            "display" : "Granulocyte Colony-Stimulating Factor"
          },
          {
            "code" : "C20545",
            "display" : "Granulocyte-Macrophage Colony-Stimulating Factor"
          }
        ]
      }
    ]
  }
}

```
