# Risk Assessment Values - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk Assessment Values**

## ValueSet: Risk Assessment Values 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-risk-assessment-values | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:CancerRiskAssessmentValues |

 
A non-exhaustive value set containing codes that result from risk assessments, i.e., the risk level of the cancer. 

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
  "id" : "onconova-vs-cancer-risk-assessment-values",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-risk-assessment-values",
  "version" : "0.2.0",
  "name" : "CancerRiskAssessmentValues",
  "title" : "Risk Assessment Values",
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
  "description" : "A non-exhaustive value set containing codes that result from risk assessments, i.e., the risk level of the cancer.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C136965",
            "display" : "FLIPI Score 0-1, Low Risk"
          },
          {
            "code" : "C136967",
            "display" : "FLIPI Score 2, Intermediate Risk"
          },
          {
            "code" : "C136968",
            "display" : "FLIPI Score Greater than or Equal to 3, High Risk"
          },
          {
            "code" : "C102403",
            "display" : "Low risk"
          },
          {
            "code" : "C102402",
            "display" : "Intermediate risk"
          },
          {
            "code" : "C102401",
            "display" : "High risk"
          },
          {
            "code" : "C155844",
            "display" : "IMDC Favorable risk"
          },
          {
            "code" : "C155845",
            "display" : "IMDC Intermediate Risk"
          },
          {
            "code" : "C155846",
            "display" : "IMDC Poor risk"
          },
          {
            "code" : "C161809",
            "display" : "International Prognostic Index High Risk Group"
          },
          {
            "code" : "C161808",
            "display" : "International Prognostic Index High-Intermediate Risk Group"
          },
          {
            "code" : "C161806",
            "display" : "International Prognostic Index Low Risk Group"
          },
          {
            "code" : "C161807",
            "display" : "International Prognostic Index Low-Intermediate Risk Group"
          },
          {
            "code" : "C188368",
            "display" : "ELN Adverse-Risk Category"
          },
          {
            "code" : "C188369",
            "display" : "ELN Favorable-Risk Category"
          },
          {
            "code" : "C188370",
            "display" : "ELN Intermediate-Risk Category"
          },
          {
            "code" : "C113691",
            "display" : "Child-Pugh Class A"
          },
          {
            "code" : "C146790",
            "display" : "Child-Pugh Class A5"
          },
          {
            "code" : "C146791",
            "display" : "Child-Pugh Class A6"
          },
          {
            "code" : "C113692",
            "display" : "Child-Pugh Class B"
          },
          {
            "code" : "C146792",
            "display" : "Child-Pugh Class B7"
          },
          {
            "code" : "C146793",
            "display" : "Child-Pugh Class B8"
          },
          {
            "code" : "C146794",
            "display" : "Child-Pugh Class B9"
          },
          {
            "code" : "C113694",
            "display" : "Child-Pugh Class C"
          },
          {
            "code" : "C146795",
            "display" : "Child-Pugh Class C10"
          },
          {
            "code" : "C146796",
            "display" : "Child-Pugh Class C11"
          },
          {
            "code" : "C146797",
            "display" : "Child-Pugh Class C12"
          },
          {
            "code" : "C146798",
            "display" : "Child-Pugh Class C13"
          },
          {
            "code" : "C146799",
            "display" : "Child-Pugh Class C14"
          },
          {
            "code" : "C146801",
            "display" : "Child-Pugh Class C15"
          },
          {
            "code" : "C148151",
            "display" : "Child-Pugh A-B7 Cirrhosis"
          },
          {
            "code" : "C192873",
            "display" : "NCCN Prostate Cancer Very Low Risk Group"
          },
          {
            "code" : "C192874",
            "display" : "NCCN Prostate Cancer Low Risk Group"
          },
          {
            "code" : "C192877",
            "display" : "NCCN Prostate Cancer Unfavorable-Intermediate Risk Group"
          },
          {
            "code" : "C192876",
            "display" : "NCCN Prostate Cancer Favorable-Intermediate Risk Group"
          },
          {
            "code" : "C192875",
            "display" : "NCCN Prostate Cancer Intermediate Risk Group"
          },
          {
            "code" : "C192878",
            "display" : "NCCN Prostate Cancer High Risk Group"
          },
          {
            "code" : "C192879",
            "display" : "NCCN Prostate Cancer Very High Risk Group"
          },
          {
            "code" : "C177313",
            "display" : "Seminoma IGCCC, Good"
          },
          {
            "code" : "C177314",
            "display" : "Seminoma IGCCC, Intermediate"
          },
          {
            "code" : "C177310",
            "display" : "Non-Seminomatous Germ Cell Tumor IGCC, Good"
          },
          {
            "code" : "C177311",
            "display" : "Non-Seminomatous Germ Cell Tumor IGCC, Intermediate"
          },
          {
            "code" : "C177312",
            "display" : "Non-Seminomatous Germ Cell Tumor IGCC, Poor"
          },
          {
            "code" : "C162654",
            "display" : "ISUP Grade Pattern 1"
          },
          {
            "code" : "C162655",
            "display" : "ISUP Grade Pattern 2"
          },
          {
            "code" : "C162656",
            "display" : "ISUP Grade Pattern 3"
          },
          {
            "code" : "C162657",
            "display" : "ISUP Grade Pattern 4"
          },
          {
            "code" : "C162658",
            "display" : "ISUP Grade Pattern 5"
          }
        ]
      }
    ]
  }
}

```
