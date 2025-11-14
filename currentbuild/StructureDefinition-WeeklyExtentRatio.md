# Weekly Extent Ratio - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Weekly Extent Ratio**

## Extension: Weekly Extent Ratio 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio | *Version*:0.2.0 |
| Draft as of 2025-11-14 | *Computable Name*:WeeklyExtentRatio |

The ratio of the service provided

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)
* Examples for this Extension: [EpisodeOfCare/OktEpisodeOfCare-Proto-19779998080-1](EpisodeOfCare-OktEpisodeOfCare-Proto-19779998080-1.md) and [EpisodeOfCare/OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/WeeklyExtentRatio)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-WeeklyExtentRatio.csv), [Excel](StructureDefinition-WeeklyExtentRatio.xlsx), [Schematron](StructureDefinition-WeeklyExtentRatio.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "WeeklyExtentRatio",
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio",
  "version" : "0.2.0",
  "name" : "WeeklyExtentRatio",
  "title" : "Weekly Extent Ratio",
  "status" : "draft",
  "date" : "2025-11-14T11:11:36+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [
    {
      "name" : "HL7 Norway",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://hl7.no/"
        }
      ]
    }
  ],
  "description" : "The ratio of the service provided",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "EpisodeOfCare"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Weekly Extent Ratio",
        "definition" : "The ratio of the service provided",
        "max" : "1"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "Extension.value[x].numerator.unit",
        "path" : "Extension.value[x].numerator.unit",
        "patternString" : "h"
      },
      {
        "id" : "Extension.value[x].numerator.system",
        "path" : "Extension.value[x].numerator.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].numerator.code",
        "path" : "Extension.value[x].numerator.code",
        "patternCode" : "h"
      },
      {
        "id" : "Extension.value[x].denominator.value",
        "path" : "Extension.value[x].denominator.value",
        "patternDecimal" : 1
      },
      {
        "id" : "Extension.value[x].denominator.unit",
        "path" : "Extension.value[x].denominator.unit",
        "patternString" : "wk"
      },
      {
        "id" : "Extension.value[x].denominator.system",
        "path" : "Extension.value[x].denominator.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].denominator.code",
        "path" : "Extension.value[x].denominator.code",
        "patternCode" : "wk"
      }
    ]
  }
}

```
