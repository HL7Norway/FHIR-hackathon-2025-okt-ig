# OktEpisodeOfCare1 - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktEpisodeOfCare1**

## Example EpisodeOfCare: OktEpisodeOfCare1

Profile: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)

**Weekly Extent Ratio**: 10 h(Details: UCUM codeh = 'h')/1 wk(Details: UCUM codewk = 'wk')

**Utfyllende beskrivelse av tjenesten**: 

Dette er en utfyllende beskrivelse av tjenesten

**status**: Active

**type**: Praktisk bistand - daglige gjøremål, Dagopphold

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
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio",
      "valueRatio" : {
        "numerator" : {
          "value" : 10,
          "unit" : "h",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "wk",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        }
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
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs",
          "code" : "dagopphold"
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
