Alias: $CONSTCS = ConsentStatusCodeSystem

ValueSet: ConsentStatus
Id: onconova-vs-consent-status
Title: "Consent Status Value Set"
Description: "The consent status of a patient for further use of data in research."
* $CONSTCS#valid "Valid"
* $CONSTCS#revoked "Revoked"
* $CONSTCS#unknown "Unknown"


CodeSystem: ConsentStatusCodeSystem
Id: onconova-cs-consent-status
Title: "Consent Status Code System"
Description: "A code system for consent status relevant to Onconova patients."    

* #valid "Valid"
* #revoked "Revoked"
* #unknown "Unknown"
