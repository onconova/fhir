# Family Member History Condition Contributed to Death - Onconova Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Family Member History Condition Contributed to Death**

## Extension: Family Member History Condition Contributed to Death 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-member-condition-contributed-to-death | *Version*:0.2.0 |
| Active as of 2026-02-25 | *Computable Name*:FamilyMemberConditionContributedToDeath |

Whether the condition contributed to the patient's family member's death

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Cancer Family Member History Profile](StructureDefinition-onconova-cancer-family-member-history.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/onconova.fhir|current/StructureDefinition/onconova-ext-family-member-condition-contributed-to-death)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-onconova-ext-family-member-condition-contributed-to-death.csv), [Excel](StructureDefinition-onconova-ext-family-member-condition-contributed-to-death.xlsx), [Schematron](StructureDefinition-onconova-ext-family-member-condition-contributed-to-death.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "onconova-ext-family-member-condition-contributed-to-death",
  "url" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-member-condition-contributed-to-death",
  "version" : "0.2.0",
  "name" : "FamilyMemberConditionContributedToDeath",
  "title" : "Family Member History Condition Contributed to Death",
  "status" : "active",
  "date" : "2026-02-25T14:29:35+00:00",
  "publisher" : "Onconova",
  "contact" : [{
    "name" : "Onconova",
    "telecom" : [{
      "system" : "url",
      "value" : "http://onconova.github.io/docs"
    }]
  }],
  "description" : "Whether the condition contributed to the patient's family member's death",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "http://onconova.github.io/fhir/StructureDefinition/onconova-cancer-family-member-history#FamilyMemberHistory.condition.extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Family Member History Condition Contributed to Death",
      "definition" : "Whether the condition contributed to the patient's family member's death"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://onconova.github.io/fhir/StructureDefinition/onconova-ext-family-member-condition-contributed-to-death"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
