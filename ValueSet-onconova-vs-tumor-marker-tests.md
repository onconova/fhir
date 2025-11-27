# Tumor Marker Tests - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumor Marker Tests**

## ValueSet: Tumor Marker Tests 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-tests | *Version*:0.2.0 |
| Active as of 2025-11-27 | *Computable Name*:TumorMarkerTests |

 
ValueSet containing LOINC and NCI Thesaurus codes for tumor marker laboratory tests and measurements 

 **References** 

* [Tumor Marker Profile](StructureDefinition-onconova-tumor-marker.md)

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
  "id" : "onconova-vs-tumor-marker-tests",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-tumor-marker-tests",
  "version" : "0.2.0",
  "name" : "TumorMarkerTests",
  "title" : "Tumor Marker Tests",
  "status" : "active",
  "date" : "2025-11-27T13:06:44+00:00",
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
  "description" : "ValueSet containing LOINC and NCI Thesaurus codes for tumor marker laboratory tests and measurements",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "2039-6",
            "display" : "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "19166-8",
            "display" : "Carcinoembryonic Ag [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "19167-6",
            "display" : "Carcinoembryonic Ag [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "40618-1",
            "display" : "Cancer Ag 125 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "10334-1",
            "display" : "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "24108-3",
            "display" : "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "2011-5",
            "display" : "Cancer Ag 242 [Presence] in Serum or Plasma"
          },
          {
            "code" : "17842-6",
            "display" : "Cancer Ag 27-29 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "34256-8",
            "display" : "Cancer Ag 50 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "19189-0",
            "display" : "Cancer Ag 549 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "17843-4",
            "display" : "Cancer Ag 72-4 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "13127-6",
            "display" : "Cancer Ag DM/70K [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "24474-9",
            "display" : "Cancer associated serum Ag [Units/volume] in Serum"
          },
          {
            "code" : "98117-5",
            "display" : "Fibroblast growth factor 2 [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "87832-2",
            "display" : "Fibroblast growth factor 21.intact [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "46699-5",
            "display" : "Fibroblast growth factor 23 [Units/volume] in Plasma"
          },
          {
            "code" : "54390-0",
            "display" : "Fibroblast growth factor 23.intact [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "104259-7",
            "display" : "Fibroblast growth factor 23 [Presence] in Tissue by FISH"
          },
          {
            "code" : "96461-9",
            "display" : "Gastrin releasing polypeptide prohormone [Mass/volume] in Serum or Plasma by Immunoassay"
          },
          {
            "code" : "54165-6",
            "display" : "Tumor necrosis factor binding protein [Units/volume] in Serum"
          },
          {
            "code" : "48663-9",
            "display" : "YKL-40 [Mass/volume] in Serum"
          },
          {
            "code" : "15060-7",
            "display" : "Enolase.neuron specific [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "19193-2",
            "display" : "Enolase.neuron specific [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "2532-0",
            "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
          },
          {
            "code" : "9811-1",
            "display" : "Chromogranin A [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "25587-7",
            "display" : "Chromogranin A [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "47275-3",
            "display" : "S100 calcium binding protein B [Mass/volume] in Serum"
          },
          {
            "code" : "19195-7",
            "display" : "Prostate specific Ag [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "2857-1",
            "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "19197-3",
            "display" : "Prostate specific Ag [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "1834-1",
            "display" : "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "19176-7",
            "display" : "Alpha-1-Fetoprotein [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "19177-5",
            "display" : "Alpha-1-Fetoprotein [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "55869-2",
            "display" : "Choriogonadotropin.beta subunit [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "21198-7",
            "display" : "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "2111-3",
            "display" : "Choriogonadotropin.beta subunit [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "55868-4",
            "display" : "Choriogonadotropin.beta subunit [Multiple of the median] in Serum or Plasma"
          },
          {
            "code" : "25390-6",
            "display" : "Cytokeratin 19 [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "19182-5",
            "display" : "Cytokeratin 19 [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "96044-3",
            "display" : "Human epididymis protein 4 [Mass/volume] in Serum or Plasma"
          },
          {
            "code" : "55180-4",
            "display" : "Human epididymis protein 4 [Moles/volume] in Serum or Plasma"
          },
          {
            "code" : "17248-6",
            "display" : "Melanin [Units/volume] in Serum or Plasma"
          },
          {
            "code" : "2607-0",
            "display" : "Melanin [Mass/volume] in Urine"
          },
          {
            "code" : "13238-1",
            "display" : "Epstein Barr virus Ab [Units/volume] in Serum"
          },
          {
            "code" : "49178-7",
            "display" : "Epstein Barr virus Ab [Presence] in Serum"
          },
          {
            "code" : "72383-3",
            "display" : "HER2 [Presence] in Tissue by Immunoassay"
          },
          {
            "code" : "14228-1",
            "display" : "Cells.estrogen receptor/cells in Tissue by Immune stain"
          },
          {
            "code" : "14230-7",
            "display" : "Cells.progesterone receptor/cells in Tissue by Immune stain"
          },
          {
            "code" : "29593-1",
            "display" : "Cells.Ki-67 nuclear Ag/cells in Tissue by Immune stain"
          },
          {
            "code" : "96272-0",
            "display" : "DNA mismatch repair protein Mlh3 [Presence] in Cancer specimen by Immune stain"
          },
          {
            "code" : "81691-8",
            "display" : "DNA mismatch repair protein Mlh1 [Presence] in Cancer specimen by Immune stain"
          },
          {
            "code" : "81692-6",
            "display" : "DNA mismatch repair protein Msh2 [Presence] in Cancer specimen by Immune stain"
          },
          {
            "code" : "81693-4",
            "display" : "DNA mismatch repair protein Msh6 [Presence] in Cancer specimen by Immune stain"
          },
          {
            "code" : "81694-2",
            "display" : "Mismatch repair endonuclease PMS2 [Presence] in Cancer specimen by Immune stain"
          },
          {
            "code" : "21614-3",
            "display" : "CDKN2A gene deletion [Presence] in Blood or Tissue by Molecular genetics method"
          },
          {
            "code" : "105077-2",
            "display" : "Human papilloma virus DNA [Presence] in Specimen"
          },
          {
            "code" : "5003-9",
            "display" : "Epstein Barr virus DNA [Presence] in Tissue by Probe"
          },
          {
            "code" : "108217-1",
            "display" : "Epstein Barr virus DNA [Units/volume] (viral load) in Specimen by NAA with probe detection"
          }
        ]
      },
      {
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "concept" : [
          {
            "code" : "C96593",
            "display" : "Circulating Tumor Cell Count"
          },
          {
            "code" : "C199175",
            "display" : "PD-L1 Immune Cell Score"
          },
          {
            "code" : "C184941",
            "display" : "PD-L1 Tumor Proportion Score"
          },
          {
            "code" : "C176582",
            "display" : "PD-L1 Combined Positive Score"
          },
          {
            "code" : "C185751",
            "display" : "HER2/Neu Status by Immunohistochemistry"
          },
          {
            "code" : "C157165",
            "display" : "AR Status by Immunohistochemistry"
          },
          {
            "code" : "C165984",
            "display" : "Somatostatin Receptor Type 2 Measurement"
          }
        ]
      }
    ]
  }
}

```
