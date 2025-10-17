# Comorbidity Panels Code System - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comorbidity Panels Code System**

## CodeSystem: Comorbidity Panels Code System 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/CodeSystem/onconova-cs-comorbidity-panels | *Version*:0.2.0 |
| Active as of 2025-10-17 | *Computable Name*:ComorbidityPanelsSystem |

 
A code system for comorbidity panels relevant to cancer patients. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ComorbidityPanels](ValueSet-onconova-vs-comorbidity-panels.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "onconova-cs-comorbidity-panels",
  "url" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-comorbidity-panels",
  "version" : "0.2.0",
  "name" : "ComorbidityPanelsSystem",
  "title" : "Comorbidity Panels Code System",
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
  "description" : "A code system for comorbidity panels relevant to cancer patients.",
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "charlson",
      "display" : "Charlson Comorbidity Panel"
    },
    {
      "code" : "elixhauser",
      "display" : "Elixhauser Comorbidity Panel"
    },
    {
      "code" : "nci",
      "display" : "NCI Comorbidity Panel"
    }
  ]
}

```
