# Cancer Imaging Methods Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cancer Imaging Methods Value Set**

## ValueSet: Cancer Imaging Methods Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-imaging-methods | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:CancerImagingMethods |

 
Imaging methods used in cancer diagnosis and monitoring. 

 **References** 

* [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 9 concepts

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
  "id" : "onconova-vs-cancer-imaging-methods",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-cancer-imaging-methods",
  "version" : "0.2.0",
  "name" : "CancerImagingMethods",
  "title" : "Cancer Imaging Methods Value Set",
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
  "description" : "Imaging methods used in cancer diagnosis and monitoring.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "77477000",
            "display" : "CT - Computerized tomography"
          },
          {
            "code" : "113091000",
            "display" : "MRI - Magnetic resonance imaging"
          },
          {
            "code" : "16310003",
            "display" : "US - Ultrasound"
          },
          {
            "code" : "82918005",
            "display" : "PET - Positron emission tomography"
          },
          {
            "code" : "260222006",
            "display" : "SPET - Single photon emission computed tomography"
          },
          {
            "code" : "363680008",
            "display" : "X-ray"
          },
          {
            "code" : "312275004",
            "display" : "Fluoroscopic imaging"
          },
          {
            "code" : "312337001",
            "display" : "Thermography imaging"
          },
          {
            "code" : "371576000",
            "display" : "Video imaging"
          }
        ]
      }
    ]
  }
}

```
