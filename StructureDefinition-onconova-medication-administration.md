# Medication Administration Profile - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Administration Profile**

## Resource Profile: Medication Administration Profile 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:OnconovaMedicationAdministration |

 
A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. 
This profile extends the base mCODE[CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration)to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies. 

**Usages:**

* Refer to this Profile: [Adverse Event Profile](StructureDefinition-onconova-adverse-event.md), [Combined With](StructureDefinition-onconova-ext-combined-with.md) and [Therapy Line Profile](StructureDefinition-onconova-therapy-line.md)
* CapabilityStatements using this Profile: [Onconova FHIR REST Capability Statement](CapabilityStatement-onconova-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-medication-administration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-medication-administration.csv), [Excel](StructureDefinition-onconova-medication-administration.xlsx), [Schematron](StructureDefinition-onconova-medication-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-medication-administration",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-medication-administration",
  "version" : "0.1.0",
  "name" : "OnconovaMedicationAdministration",
  "title" : "Medication Administration Profile",
  "status" : "active",
  "date" : "2025-10-15T14:58:32+00:00",
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
  "description" : "A profile representing a medication administered to a cancer patient during a systemic therapy (e.g., chemotherapy, immunotherapy), including details about the medication and dosage. \n\nThis profile extends the base mCODE [CancerRelatedMedicationAdministration profile](http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration) to introduce additional information about the systemic therapy (e.g. number of cycles, therapeutic role, etc.) and to introduce references to other medication administration given simultaneously to represent combination therapies.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-administration|4.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration"
      },
      {
        "id" : "MedicationAdministration.extension:combinedWith",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "combinedWith",
        "short" : "Other medication administered in combination",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-combined-with|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:cycles",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "cycles",
        "short" : "Total number of cycles for this medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cycles|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:therapyLine",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "therapyLine",
        "short" : "Reference to the therapy line associated with this treatment",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/ext-therapy-line-reference|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:adjunctiveRole",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "adjunctiveRole",
        "short" : "Role of this medication in the overall treatment plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-adjunctive-role|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:isPrimaryTherapy",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "isPrimaryTherapy",
        "short" : "Indicates if this medication is the primary therapy within a therapy line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-is-primary-therapy|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.partOf",
        "path" : "MedicationAdministration.partOf",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "MedicationAdministration.statusReason",
        "path" : "MedicationAdministration.statusReason",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-treatment-termination-reasons|0.1.0"
        }
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept",
        "path" : "MedicationAdministration.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-antineoplastic-agents|0.1.0"
        }
      },
      {
        "id" : "MedicationAdministration.subject",
        "path" : "MedicationAdministration.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-patient|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.context",
        "path" : "MedicationAdministration.context",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "MedicationAdministration.supportingInformation",
        "path" : "MedicationAdministration.supportingInformation",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "MedicationAdministration.effective[x]",
        "path" : "MedicationAdministration.effective[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "MedicationAdministration.performer",
        "path" : "MedicationAdministration.performer",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "MedicationAdministration.reasonCode",
        "path" : "MedicationAdministration.reasonCode",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      },
      {
        "id" : "MedicationAdministration.reasonReference",
        "path" : "MedicationAdministration.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://onconova.github.io/fhir/StructureDefinition/onconova-primary-cancer-condition|0.1.0",
              "http://onconova.github.io/fhir/StructureDefinition/onconova-secondary-cancer-condition|0.1.0"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.request",
        "path" : "MedicationAdministration.request",
        "short" : "Not used in this profile",
        "definition" : "Not used in this profile"
      }
    ]
  }
}

```
