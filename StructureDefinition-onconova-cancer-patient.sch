<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CancerPatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-consent-status']) &gt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-consent-status': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-consent-status']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-consent-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center']) &gt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-clinical-center': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-overall-survival']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-overall-survival': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-data-completion-rate']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-data-completion-rate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-end-of-records': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:birthDate) &gt;= 1">birthDate: minimum cardinality of 'birthDate' is 1</sch:assert>
      <sch:assert test="count(f:deceased[x]) &gt;= 1">deceased[x]: minimum cardinality of 'deceased[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name/f:extension</sch:title>
    <sch:rule context="f:Patient/f:name/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age-at-diagnosis']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-age-at-diagnosis': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:deceased[x] 1</sch:title>
    <sch:rule context="f:Patient/f:deceased[x]">
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status']) &gt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-vital-status': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-cause-of-death']) &gt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-cancer-patient-cause-of-death': minimum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
