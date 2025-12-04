# Tumor Marker Analytes Value Set - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Marker Analytes Value Set**

## ValueSet: Tumor Marker Analytes Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-analytes | *Version*:0.2.0 |
| Active as of 2025-12-04 | *Computable Name*:TumorMarkerAnalytes |

 
Analytes considered tumor markers. 

 **References** 

* [Tumor Marker Analyte](StructureDefinition-onconova-ext-tumor-marker-analyte.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set contains 42 concepts

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
  "id" : "onconova-vs-tumor-marker-analytes",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-analytes",
  "version" : "0.2.0",
  "name" : "TumorMarkerAnalytes",
  "title" : "Tumor Marker Analytes Value Set",
  "status" : "active",
  "date" : "2025-12-04T10:59:28+00:00",
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
  "description" : "Analytes considered tumor markers.",
  "compose" : {
    "include" : [
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C17922",
            "display" : "Somatostatin Receptor Type 2"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "LP28643-2",
            "display" : "Carcinoembryonic Ag"
          },
          {
            "code" : "LP14543-0",
            "display" : "Cancer Ag 125"
          },
          {
            "code" : "LP15461-4",
            "display" : "Cancer Ag 15-3"
          },
          {
            "code" : "LP14040-7",
            "display" : "Cancer Ag 19-9"
          },
          {
            "code" : "LP15463-0",
            "display" : "Cancer Ag 242"
          },
          {
            "code" : "LP15464-8",
            "display" : "Cancer Ag 27-29"
          },
          {
            "code" : "LP15465-5",
            "display" : "Cancer Ag 50"
          },
          {
            "code" : "LP15466-3",
            "display" : "Cancer Ag 549"
          },
          {
            "code" : "LP18274-8",
            "display" : "Cancer Ag DM/70K"
          },
          {
            "code" : "LP15467-1",
            "display" : "Cancer Ag 72-4"
          },
          {
            "code" : "LP28642-4",
            "display" : "Cancer associated serum Ag"
          },
          {
            "code" : "LP135291-5",
            "display" : "Circulating tumor cells"
          },
          {
            "code" : "LP63010-0",
            "display" : "Fibroblast growth factor"
          },
          {
            "code" : "LP420752-0",
            "display" : "Gastrin releasing polypeptide prohormone"
          },
          {
            "code" : "LP89249-4",
            "display" : "Tumor necrosis factor binding protein 1"
          },
          {
            "code" : "LP62856-7",
            "display" : "YKL-40"
          },
          {
            "code" : "LP38032-6",
            "display" : "Enolase.neuron specific Ag"
          },
          {
            "code" : "LP15033-1",
            "display" : "Lactate dehydrogenase"
          },
          {
            "code" : "LP14652-9",
            "display" : "Chromogranin A"
          },
          {
            "code" : "LP57672-5",
            "display" : "S100 calcium binding protein B"
          },
          {
            "code" : "LP18193-0",
            "display" : "Prostate specific Ag"
          },
          {
            "code" : "LP14331-0",
            "display" : "Alpha-1-Fetoprotein"
          },
          {
            "code" : "LP14329-4",
            "display" : "Choriogonadotropin.beta subunit"
          },
          {
            "code" : "LP19423-0",
            "display" : "Cytokeratin 19"
          },
          {
            "code" : "LP93517-8",
            "display" : "Human epididymis protein 4"
          },
          {
            "code" : "LP15724-5",
            "display" : "Melanin"
          },
          {
            "code" : "LP38066-4",
            "display" : "Epstein Barr virus Ab"
          },
          {
            "code" : "LP220351-3",
            "display" : "Programmed cell death ligand 1"
          },
          {
            "code" : "LP28442-9",
            "display" : "HER2"
          },
          {
            "code" : "LP18567-5",
            "display" : "Estrogen receptor"
          },
          {
            "code" : "LP14902-8",
            "display" : "Progesterone receptor"
          },
          {
            "code" : "LP68364-6",
            "display" : "Androgen receptor"
          },
          {
            "code" : "LP39016-8",
            "display" : "Ki-67 nuclear Ag"
          },
          {
            "code" : "LP420961-7",
            "display" : "DNA mismatch repair protein Mlh3"
          },
          {
            "code" : "LP212189-7",
            "display" : "DNA mismatch repair protein Mlh1"
          },
          {
            "code" : "LP212190-5",
            "display" : "DNA mismatch repair protein Msh2"
          },
          {
            "code" : "LP420964-1",
            "display" : "DNA mismatch repair protein Msh3"
          },
          {
            "code" : "LP212191-3",
            "display" : "DNA mismatch repair protein Msh6"
          },
          {
            "code" : "LP212192-1",
            "display" : "Mismatch repair endonuclease PMS2"
          },
          {
            "code" : "LP19646-6",
            "display" : "CDKN2A gene"
          },
          {
            "code" : "LP38570-5",
            "display" : "Human papilloma virus DNA"
          },
          {
            "code" : "LP38067-2",
            "display" : "Epstein Barr virus DNA"
          }
        ]
      }
    ]
  }
}

```
