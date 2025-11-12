# Weekly Extent Quantity - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Weekly Extent Quantity**

## Extension: Weekly Extent Quantity 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentQuantity | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:WeeklyExtentQuantity |

The quantity of the service provided on a weekly basis

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)
* Examples for this Extension: [EpisodeOfCare/OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/WeeklyExtentQuantity)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-WeeklyExtentQuantity.csv), [Excel](StructureDefinition-WeeklyExtentQuantity.xlsx), [Schematron](StructureDefinition-WeeklyExtentQuantity.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "WeeklyExtentQuantity",
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentQuantity",
  "version" : "0.1.0",
  "name" : "WeeklyExtentQuantity",
  "title" : "Weekly Extent Quantity",
  "status" : "draft",
  "date" : "2025-11-12T13:47:08+00:00",
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
  "description" : "The quantity of the service provided on a weekly basis",
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
        "short" : "Weekly Extent Quantity",
        "definition" : "The quantity of the service provided on a weekly basis",
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
        "fixedUri" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentQuantity"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].unit",
        "path" : "Extension.value[x].unit",
        "patternString" : "h"
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "h"
      }
    ]
  }
}

```
