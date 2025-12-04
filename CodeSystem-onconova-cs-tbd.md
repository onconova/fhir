# To Be Determined Codes - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **To Be Determined Codes**

## CodeSystem: To Be Determined Codes 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/CodeSystem/onconova-cs-tbd | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:ToBeDeterminedCodes |

 
A code system for codes that are yet to be determined. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "onconova-cs-tbd",
  "url" : "http://onconova.github.io/fhir/CodeSystem/onconova-cs-tbd",
  "version" : "0.2.0",
  "name" : "ToBeDeterminedCodes",
  "title" : "To Be Determined Codes",
  "status" : "active",
  "date" : "2025-12-04T06:29:30+00:00",
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
  "description" : "A code system for codes that are yet to be determined.",
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "aneuploid-score",
      "display" : "Aneuploid Score"
    },
    {
      "code" : "tumor-neoantigen-burden",
      "display" : "Tumor Neoantigen Burden"
    },
    {
      "code" : "rna-hgvs",
      "display" : "Transcript RNA change (rHGVS)"
    }
  ]
}

```
