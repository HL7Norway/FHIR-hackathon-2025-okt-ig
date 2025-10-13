# OktEpisodeOfCare1 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktEpisodeOfCare1**

## Example EpisodeOfCare: OktEpisodeOfCare1

Profile: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)

**Weekly Extent Quantity**: 10

**Utfyllende beskrivelse av tjenesten**: 

Dette er en utfyllende beskrivelse av tjenesten

**status**: Active

**type**: Praktisk bistand - daglige gjøremål, Distriktspsykiatrisk senter, Dagopphold, Behov for mer informasjon i GUI

**patient**: [Jane Doe Female, DoB: 1980-01-01](Patient-Example.md)

**period**: 2025-01-01 --> 2025-12-31



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "OktEpisodeOfCare1",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEpisodeOfCare"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentQuantity",
      "valueQuantity" : {
        "value" : 10
      }
    },
    {
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown",
      "valueMarkdown" : "Dette er en utfyllende beskrivelse av tjenesten"
    }
  ],
  "status" : "active",
  "type" : [
    {
      "coding" : [
        {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.9151",
          "code" : "1",
          "display" : "Praktisk bistand - daglige gjøremål"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs",
          "code" : "dps"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs",
          "code" : "dagopphold"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs",
          "code" : "needsCaption"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/Example"
  },
  "period" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  }
}

```
