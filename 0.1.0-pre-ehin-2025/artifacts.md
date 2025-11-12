# Artifacts Summary - v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Logical Model for IplosCode](StructureDefinition-IplosCodeDefinition.md) | Logical Model for IplosCode |
| [Logical Model for OktEvent](StructureDefinition-OktEvent.md) | Logical Model for OktEvent |
| [Logical Model for OktMessage](StructureDefinition-OktMessage.md) | Logical Model for OktMessage |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md) | Profile on EpisodeOfCare for OktMessage |
| [OktServiceRequest](StructureDefinition-OktServiceRequest.md) | Profile on ServiceRequest for OktMessage |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Utfyllende beskrivelse av tjenesten](StructureDefinition-ServiceDescriptionMarkdown.md) | Utfyllende beskrivelse av tjenesten |
| [Weekly Extent Quantity](StructureDefinition-WeeklyExtentQuantity.md) | The quantity of the service provided on a weekly basis |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Indikatorer for tjenesten](ValueSet-OktOrderDetailsVs.md) | Indikatorer med øvrige detaljer om tjenesten. |
| [Individbasert pleie- og omsorgsstatistikk (IPLOS)](ValueSet-IplosVs.md) | Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene. |
| [Oppholdstype](ValueSet-OktStayTypeVs.md) | Oppholdstype for pleie- og omsorgstjenester. |
| [Tjenestenivå](ValueSet-OktServiceLevelVs.md) | Tjenestenivå for pleie- og omsorgstjenester. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Indikatorer for tjenesten](CodeSystem-OktOrderDetailsCs.md) | Indikatorer med øvrige detaljer om tjenesten. |
| [Individbasert pleie- og omsorgsstatistikk (IPLOS)](CodeSystem-IplosCs.md) | Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene. |
| [Oppholdstype](CodeSystem-OktStayTypeCs.md) | Oppholdstype for pleie- og omsorgstjenester. |
| [Tjenestenivå](CodeSystem-OktServiceLevelCs.md) | Tjenestenivå for pleie- og omsorgstjenester. |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [OktMessageServiceRequest](StructureMap-OktMessage-ServiceRequest.md) | Map OktMessage to ServiceRequest |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.md) | An example OktMessage implemented as a EpisodeOfCare |
| [OktMessage1](Binary-OktMessage1.md) | An example OktMessage |
| [OktServiceRequest1](ServiceRequest-OktServiceRequest1.md) | An example OktMessage implemented as a ServiceRequest |
| [PatientExample](Patient-Example.md) | An example Patient for resources that need a Patient reference |

