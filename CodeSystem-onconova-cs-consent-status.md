# Consent Status Code System - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consent Status Code System**

## CodeSystem: Consent Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/CodeSystem/onconova-cs-consent-status | *Version*:0.2.0 |
| Active as of 2025-11-22 | *Computable Name*:ConsentStatusCodeSystem |

 
A code system for consent status relevant to Onconova patients. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConsentStatus](ValueSet-onconova-vs-consent-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "onconova-cs-consent-status",
  "url" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-consent-status",
  "version" : "0.2.0",
  "name" : "ConsentStatusCodeSystem",
  "title" : "Consent Status Code System",
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
  "description" : "A code system for consent status relevant to Onconova patients.",
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "valid",
      "display" : "Valid"
    },
    {
      "code" : "revoked",
      "display" : "Revoked"
    },
    {
      "code" : "unknown",
      "display" : "Unknown"
    }
  ]
}

```
