<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile TumorMarkerTest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-related-condition': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:code</sch:title>
    <sch:rule context="f:Observation/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte']) &gt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte']) &lt;= 1">extension with URL = 'http://onconova.github.io/fhir/StructureDefinition/onconova-ext-tumor-marker-analyte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
