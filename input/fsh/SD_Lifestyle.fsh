Profile: OnconovaLifestyle
Parent: USCoreSimpleObservationProfile
Id: onconova-lifestyle
Title: "Lifestyle Profile"
Description: """
A profile representing a (reported) observation on certain lifestyle characteristics of a cancer patient (e.g. smoking, drinking, and sleeping habits, environmental exposures, etc.). 

It directly profiles the base FHIR `Observation` resource as this resource is not represented in mCODE, to add relevant observation components for the different lifestyle characteristics. 

**Conformance:**

Observation resources representing a summary of a patient's lifestyle in the scope of Onconova SHALL conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly. 
"""

* code = $LOINC#LA32823-9 "Lifestyle"

* subject only Reference(OnconovaCancerPatient)
* insert ObligationsWithUscdi(subject, #SHALL:populate, #SHOULD:persist)

* effective[x] only dateTime
* insert ObligationsWithUscdi(effectiveDateTime, #SHALL:populate, #SHOULD:persist)

* insert ObservationComponentSlicingRules

* insert CreateComponent(smokingStatus, 0, 1)
* component[smokingStatus].code = $LOINC#72166-2 "Tobacco smoking status"
* component[smokingStatus].value[x] only CodeableConcept
* component[smokingStatus].valueCodeableConcept from SmokingStatus
* insert Obligations(component[smokingStatus], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(smokingPackyears, 0, 1)
* component[smokingPackyears].code = $LOINC#8664-5 "Cigarettes smoked total (pack per year) - Reported"
* component[smokingPackyears].value[x] only Quantity
* component[smokingPackyears].valueQuantity.system = $UCUM
* component[smokingPackyears].valueQuantity.code = $UCUM#{pack-year}
* insert Obligations(component[smokingPackyears], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(smokingQuited, 0, 1)
* component[smokingQuited].code = $LOINC#107339-4 "Temporary smoking cessation [Time]"
* component[smokingQuited].value[x] only Quantity
* component[smokingQuited].valueQuantity from UnitsOfTime
* insert Obligations(component[smokingQuited], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(alcoholConsumption, 0, 1)
* component[alcoholConsumption].code = $LOINC#1106630-7 "Alcohol use pattern"
* component[alcoholConsumption].value[x] only CodeableConcept
* component[alcoholConsumption].valueCodeableConcept from http://loinc.org/vs/LL2179-1
* insert Obligations(component[alcoholConsumption], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(nightSleep, 0, 1)
* component[nightSleep].code = $LOINC#93832-4 "Sleep duration"
* component[nightSleep].value[x] only Quantity
* component[nightSleep].valueQuantity from UnitsOfTime
* insert Obligations(component[nightSleep], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(recreationalDrug, 0, *)
* component[recreationalDrug].code = $NCIT#C84368 "Recreational Drug"
* component[recreationalDrug].value[x] only CodeableConcept
* component[recreationalDrug].valueCodeableConcept from RecreationalDrugs
* insert Obligations(component[recreationalDrug], #SHALL:populate-if-known, #SHOULD:persist)

* insert CreateComponent(exposures, 0, *)
* component[exposures].code = $NCIT#C16552 "Environmental Exposure"
* component[exposures].value[x] only CodeableConcept
* component[exposures].valueCodeableConcept from ExposureAgents 
* insert Obligations(component[exposures], #SHALL:populate-if-known, #SHOULD:persist)

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
* insert NotUsed(hasMember)

* obeys o-lif-req-1 and o-lif-req-2

Invariant: o-lif-req-1
Description: "The subject element is required and must be provided."
Expression: "subject.exists() and subject.resolve().is(Patient)"
Severity: #error

Invariant: o-lif-req-2
Description: "The effectiveDateTime element is required and must be provided."
Expression: "effectiveDateTime.exists() and effectiveDateTime.hasValue()"
Severity: #error
