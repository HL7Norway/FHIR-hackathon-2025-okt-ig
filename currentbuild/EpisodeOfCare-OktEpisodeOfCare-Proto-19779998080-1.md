# OktEpisodeOfCare-Proto-19779998080-1 - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktEpisodeOfCare-Proto-19779998080-1**

## Example EpisodeOfCare: OktEpisodeOfCare-Proto-19779998080-1

Profile: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)

**Weekly Extent Ratio**: 15 h(Details: UCUM codeh = 'h')/1 wk(Details: UCUM codewk = 'wk')

**status**: Active

**type**: Praktisk bistand - opplæring - daglige gjøremål

**patient**: [Jane Doe Female, DoB: 1980-01-01](Patient-Example.md)

**managingOrganization**: [Organization Sone Vest, Kjeller](Organization-org-1-1-2-6.md)

**period**: 2020-06-22 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "OktEpisodeOfCare-Proto-19779998080-1",
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
          "value" : 15,
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
    }
  ],
  "status" : "active",
  "type" : [
    {
      "coding" : [
        {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.9151",
          "code" : "2",
          "display" : "Praktisk bistand - opplæring - daglige gjøremål"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/Example"
  },
  "managingOrganization" : {
    "reference" : "Organization/org-1-1-2-6"
  },
  "period" : {
    "start" : "2020-06-22"
  }
}

```
