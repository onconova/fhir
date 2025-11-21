---
title: Onconova FHIR Implementation Guide
---

### Introduction

**Onconova** is an open-source precision oncology platform focused on enabling advanced cancer research. The FHIR interface exposes key resources, profiles, and value sets to facilitate standardized data exchange and integration with EHRs, registries, and analytics platforms.

This implementation guide provides a comprehensive overview of the FHIR-based server interface to Onconova, supporting interoperability, data exchange, and integration with clinical and research systems. It complements the [OpenAPI specification](https://onconova.github.io/docs/latest/guide/api/specification/) and is designed for healthcare organizations, developers, and integrators seeking to leverage Onconova's oncology data.

#### Relation to mCODE

This FHIR interface is designed to align with the [**minimal Common Oncology Data Elements (mCODE)** STU4 Implementation Guide](http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode), leveraging established, community-driven standards for oncology data. The Onconova IG refines and constrains mCODE resources to ensure consistent data elements and terminology bindings. Additionally, it defines new profiles to address oncology use cases not yet covered by the mCODE IG.

### Understanding this Guide

The Onconova Implementation Guide (IG) serves as a “Software” IG that explains how to work with Onconova’s FHIR interface and outlines the additional constraints Onconova places on top of the mCODE standard.

The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

Page layouts and symbols follow the conventions described in the [official FHIR documentation](https://www.hl7.org/fhir/formats.html). When you open a profile page, you’ll notice several different views:

* Differential Table: This view highlights the differences between the current profile and its immediate parent (which might be a base FHIR resource, a US Core profile, or another profile defined within this guide).

* Snapshot Table: This view shows the complete profile, listing every element in its fully expanded form.

If you encounter any inconsistencies between the rendering of pages in this IG and the corresponding FHIR artifacts, treat the FHIR artifacts as the authoritative source.

### Safety Considerations
This Implementation Guide specifies the data elements, resources, formats, and exchange methods used to share research healthcare information. Because clinical safety is paramount, additional safety guidance for the many possible implementations can be found at the HL7 FHIR safety page: https://www.hl7.org/FHIR/safety.html.

While the guide includes provisions that support adherence to data‑protection and security regulations, merely using the specification does not ensure compliance. Compliance must be achieved through appropriate safeguards applied during implementation projects and in routine operations. 

### Governance
The Onconova FHIR IG is managed by the [Onconova development group](https://github.com/onconova/fhir/graphs/contributors).

### Credits

The authors thank the mCODE Working Group for their diligent effort and solid contributions, which have been essential to the project's progress.

---

_Onconova is an open source project and welcomes all contributors. The source code for this IG is maintained in the [Onconova Github](https://github.com/onconova/fhir). All of the profiling work is done using FHIR Shorthand and SUSHI. All content is subject to change._