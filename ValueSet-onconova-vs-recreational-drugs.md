# Recreational Drugs - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recreational Drugs**

## ValueSet: Recreational Drugs 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-recreational-drugs | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:RecreationalDrugs |

 
Substances that people use to alter their mental state, often for pleasure or leisure, with effects ranging from relaxation and euphoria to hallucinations and altered perceptions. 

 **References** 

* [Lifestyle Profile](StructureDefinition-onconova-lifestyle.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

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
  "id" : "onconova-vs-recreational-drugs",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-recreational-drugs",
  "version" : "0.2.0",
  "name" : "RecreationalDrugs",
  "title" : "Recreational Drugs",
  "status" : "active",
  "date" : "2025-11-22T09:54:31+00:00",
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
  "description" : "Substances that people use to alter their mental state, often for pleasure or leisure, with effects ranging from relaxation and euphoria to hallucinations and altered perceptions.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "398705004",
            "display" : "Cannabis"
          },
          {
            "code" : "387085005",
            "display" : "Cocaine"
          },
          {
            "code" : "255641001",
            "display" : "Caffeine"
          },
          {
            "code" : "288459003",
            "display" : "MDMA"
          },
          {
            "code" : "15698006",
            "display" : "LSD"
          },
          {
            "code" : "53513007",
            "display" : "Psilocybin"
          },
          {
            "code" : "387499002",
            "display" : "Methamphetamine"
          },
          {
            "code" : "387341002",
            "display" : "Heroin"
          },
          {
            "code" : "372664007",
            "display" : "Benzodiazepine"
          },
          {
            "code" : "404642006",
            "display" : "Opioid receptor agonist"
          },
          {
            "code" : "373464007",
            "display" : "Ketamine"
          },
          {
            "code" : "111132001",
            "display" : "Nitrous oxide"
          },
          {
            "code" : "782540000",
            "display" : "GHB receptor agonist"
          },
          {
            "code" : "788540007",
            "display" : "Synthetic cannabinoid"
          },
          {
            "code" : "439721004",
            "display" : "Salvia divinorum leaves"
          },
          {
            "code" : "3983008",
            "display" : "DMT"
          },
          {
            "code" : "373780001",
            "display" : "Mescaline"
          },
          {
            "code" : "703842006",
            "display" : "Amfetamine"
          },
          {
            "code" : "373337007",
            "display" : "Methylphenidate"
          },
          {
            "code" : "111151007",
            "display" : "Anabolic steroid"
          },
          {
            "code" : "68540007",
            "display" : "Nicotine"
          }
        ]
      }
    ]
  }
}

```
