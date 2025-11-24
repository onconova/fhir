# Tumor Board Recommendations Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Board Recommendations Value Set**

## ValueSet: Tumor Board Recommendations Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-board-recommendations | *Version*:0.2.0 |
| Active as of 2025-11-24 | *Computable Name*:OnconovaTumorBoardRecommendations |

 
Recommendations that may be made by a tumor board for a cancer patient. 

 **References** 

* [Tumor Board Review Profile](StructureDefinition-onconova-tumor-board-review.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* Loinc v2.81
* SNOMED CT International edition 01-Feb 2025

This value set contains 21 concepts

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
  "id" : "onconova-vs-tumor-board-recommendations",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-board-recommendations",
  "version" : "0.2.0",
  "name" : "OnconovaTumorBoardRecommendations",
  "title" : "Tumor Board Recommendations Value Set",
  "status" : "active",
  "date" : "2025-11-24T08:04:46+00:00",
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
  "description" : "Recommendations that may be made by a tumor board for a cancer patient.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "420227002:363702006=(386053000:363702006=387713003)",
            "display" : "Recommendation to evaluate for surgery"
          },
          {
            "code" : "420227002:363702006=(386053000:363702006=1287742003)",
            "display" : "Recommendation to evaluate for radiotherapy"
          },
          {
            "code" : "420227002:363702006=(386053000:363702006=61371000210101)",
            "display" : "Recommendation to evaluate for systemic antineoplastic therapy"
          },
          {
            "code" : "420227002:363702006=(386053000:363702006=(276239002:363704007=255470001))",
            "display" : "Recommendation to evaluate for local therapy"
          },
          {
            "code" : "420227002:363702006=(277132007:363702006=(64572001:278201002=74964007))",
            "display" : "Recommendation for non-cancer treatment and watchful waiting"
          },
          {
            "code" : "420227002:363702006=(254292007:(363702006=27582007,408731000=264499004))",
            "display" : "Recommendation to repeat tumor staging early"
          },
          {
            "code" : "306806004:246486007=372688009",
            "display" : "Recommendation to continue with antineoplastic treatment"
          },
          {
            "code" : "420227002:363702006=(390906007:363702006=255238004)",
            "display" : "Recommendation to continue with follow-up"
          },
          {
            "code" : "420227002:363702006=(386053000:363702006=709491003)",
            "display" : "Recommendation to evaluate for clinical trial enrollment"
          },
          {
            "code" : "420227002:363702006=(399414003:(278201002=74964007))",
            "display" : "Recommendation to evaluate in other tumor board"
          },
          {
            "code" : "420227002:363702006=396927009",
            "display" : "Recommendation for molecular testing"
          },
          {
            "code" : "420227002:363702006=117614009",
            "display" : "Recommendation to obtain review by pathologist"
          },
          {
            "code" : "306807008:363701004=372688009",
            "display" : "Recommendation to start systemic antineoplastic therapy"
          },
          {
            "code" : "306806004:363701004=372688009",
            "display" : "Recommendation to continue systemic antineoplastic therapy"
          },
          {
            "code" : "304540007:363701004=372688009",
            "display" : "Recommendation to stop systemic antineoplastic therapy"
          },
          {
            "code" : "420227002:363702006=1345242003",
            "display" : "Recommendation for maintenance therapy"
          },
          {
            "code" : "420227002:363702006=(386053000:363702006=77465005)",
            "display" : "Recommendation to evaluate for transplant"
          },
          {
            "code" : "420227002:363702006=306237005",
            "display" : "Recommendation for referral to palliative care service"
          },
          {
            "code" : "420227002:363702006=306109009",
            "display" : "Recommendation for referral to pain management service"
          },
          {
            "code" : "420227002:363702006=(306226009:363702006=363346000)",
            "display" : "Recommendation for referral to psycho-oncological counseling"
          },
          {
            "code" : "420227002:363702006=363702006",
            "display" : "Recommendation for referral to rehabilitation service"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LA14020-4",
            "display" : "Genetic counseling recommended"
          },
          {
            "code" : "LA14021-2",
            "display" : "Confirmatory testing recommended"
          },
          {
            "code" : "LA14022-0",
            "display" : "Additional testing recommended"
          }
        ]
      }
    ]
  }
}

```
