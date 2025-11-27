<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CancerRelatedMedicationAdministration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-normalization-basis']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-normalization-basis': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-cycles']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-cycles': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-reference']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-therapy-line-reference': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-adjunctive-role']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-adjunctive-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-is-primary-therapy']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-medication-administration-is-primary-therapy': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:statusReason) &gt;= 1">statusReason: minimum cardinality of 'statusReason' is 1</sch:assert>
      <sch:assert test="count(f:statusReason) &lt;= 1">statusReason: maximum cardinality of 'statusReason' is 1</sch:assert>
      <sch:assert test="count(f:reasonReference) &gt;= 1">reasonReference: minimum cardinality of 'reasonReference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationAdministration/f:extension</sch:title>
    <sch:rule context="f:MedicationAdministration/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
