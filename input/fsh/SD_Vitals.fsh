Profile: OnconovaVitalSignsPanel
Id: onconova-vital-signs-panel
Title: "Vital Signs Panel Profile"
Parent: observation-vitalspanel
Description: """
A profile representing a collection of vital signs measurements. 

Since Onconova does not represent individual vital signs as separate observations, this profile aggregates multiple vital signs into a single Observation resource that can be uniquely identified.
It extends the [Hl7 FHIR VitalsPanel profile](http://hl7.org/fhir/StructureDefinition/vitalspanel) to include specific constraints and requirements for Onconova.

**Conformance:**

Observation resources representing a collection of vital signs in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] 1..1 MS
* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* code = $LOINC#85353-1	
* insert ObligationsWithUscdi(code, #SHALL:populate, #SHOULD:persist)

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "$this.resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Slice based on the component.code value"
* insert ObligationsWithUscdi(hasMember, #SHALL:populate-if-known, #SHOULD:persist)

* hasMember contains body-temperature 0..1 MS
* hasMember[body-temperature] only Reference(http://hl7.org/fhir/StructureDefinition/bodytemp)
* insert ObligationsWithUscdi(hasMember[body-temperature], #SHALL:populate-if-known, #SHOULD:persist)

* hasMember contains body-height 0..1 MS
* hasMember[body-height] only Reference(http://hl7.org/fhir/StructureDefinition/bodyheight)
* insert ObligationsWithUscdi(hasMember[body-height], #SHALL:populate-if-known, #SHOULD:persist)

* hasMember contains body-weight 0..1 MS
* hasMember[body-weight] only Reference(http://hl7.org/fhir/StructureDefinition/bodyweight)    
* insert ObligationsWithUscdi(hasMember[body-weight], #SHALL:populate-if-known, #SHOULD:persist)

* hasMember contains bmi 0..1 MS
* hasMember[bmi] only Reference(http://hl7.org/fhir/StructureDefinition/bmi)
* insert ObligationsWithUscdi(hasMember[bmi], #SHALL:populate-if-known, #SHOULD:persist)

* hasMember contains blood-pressure 0..1 MS
* hasMember[blood-pressure] only Reference(http://hl7.org/fhir/StructureDefinition/bp)
* insert ObligationsWithUscdi(hasMember[blood-pressure], #SHALL:populate-if-known, #SHOULD:persist)


* insert NotUsed(status)
* insert NotUsed(focus)
* insert NotUsed(encounter)
* insert NotUsed(issued)
* insert NotUsed(performer)
* insert NotUsed(bodySite)
* insert NotUsed(interpretation)
* insert NotUsed(specimen)
* insert NotUsed(device)    
* insert NotUsed(referenceRange)
* insert NotUsed(component)

* obeys o-vit-req-1 and o-vit-req-2 and o-vit-req-3 and o-vit-req-4


Invariant: o-vit-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists()"
Severity: #error

Invariant: o-vit-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error

Invariant: o-vit-req-3
Description: "At least one vital sign profile must be referenced."
Expression: "hasMember.exists() and hasMember.count() > 0"
Severity: #error

Invariant: o-vit-req-4
Description: "The value[x] element must not be set for the vitals panel."
Expression: "value.exists().not()"
Severity: #error
