# Cancer Risk Assessment Methods - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Risk Assessment Methods**

## ValueSet: Cancer Risk Assessment Methods 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-risk-assessment-methods | *Version*:0.2.0 |
| Active as of 2025-10-17 | *Computable Name*:CancerRiskAssessmentMethods |

 
A value set containing codes for various cancer risk assessment methods. 

 **References** 

* [Cancer Risk Assessment Profile](StructureDefinition-onconova-cancer-risk-assessment.md)

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
  "id" : "onconova-vs-cancer-risk-assessment-methods",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-risk-assessment-methods",
  "version" : "0.2.0",
  "name" : "CancerRiskAssessmentMethods",
  "title" : "Cancer Risk Assessment Methods",
  "status" : "active",
  "date" : "2025-10-17T13:44:17+00:00",
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
  "description" : "A value set containing codes for various cancer risk assessment methods.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C136962",
            "display" : "Follicular Lymphoma International Prognostic Index (FLIPI)"
          },
          {
            "code" : "C181086",
            "display" : "D'Amico Prostate Cancer Risk Classification"
          },
          {
            "code" : "C127872",
            "display" : "European Treatment Outcome Study (EUTOS) Score"
          },
          {
            "code" : "C127873",
            "display" : "Hasford Score"
          },
          {
            "code" : "C127875",
            "display" : "Sokal Score"
          },
          {
            "code" : "C155843",
            "display" : "International Metastatic Renal Cell Carcinoma Database Consortium (IMDC) Criteria"
          },
          {
            "code" : "C161805",
            "display" : "International Prognostic Index (IPI) Risk Group"
          },
          {
            "code" : "C177562",
            "display" : "European LeukemiaNet Risk Classification"
          },
          {
            "code" : "C121007",
            "display" : "Child-Pugh Clinical Classification"
          },
          {
            "code" : "C181085",
            "display" : "USCF Cancer of the Prostate Risk Assessment Score"
          },
          {
            "code" : "C162781",
            "display" : "Mantle Cell Lymphoma International Prognostic Index (MIPI)"
          },
          {
            "code" : "C181084",
            "display" : "NCCN Prostate Cancer Risk Stratification for Clinically Localized Disease"
          },
          {
            "code" : "C177309",
            "display" : "Seminoma IGCCC Risk Classification"
          },
          {
            "code" : "C177308",
            "display" : "Non-Seminomatous Germ Cell Tumor IGCCC Risk Classification"
          },
          {
            "code" : "C142346",
            "display" : "International Society of Urological Pathology Gleason Grade Group"
          }
        ]
      }
    ]
  }
}

```
