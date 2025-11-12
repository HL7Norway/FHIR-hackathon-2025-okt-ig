# Utfyllende beskrivelse av tjenesten - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Utfyllende beskrivelse av tjenesten**

## Extension: Utfyllende beskrivelse av tjenesten 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:ServiceDescriptionMarkdown |

Utfyllende beskrivelse av tjenesten

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)
* Examples for this Extension: [EpisodeOfCare/OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/ServiceDescriptionMarkdown)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ServiceDescriptionMarkdown.csv), [Excel](StructureDefinition-ServiceDescriptionMarkdown.xlsx), [Schematron](StructureDefinition-ServiceDescriptionMarkdown.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ServiceDescriptionMarkdown",
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown",
  "version" : "0.1.0",
  "name" : "ServiceDescriptionMarkdown",
  "title" : "Utfyllende beskrivelse av tjenesten",
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
  "description" : "Utfyllende beskrivelse av tjenesten",
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
        "short" : "Utfyllende beskrivelse av tjenesten",
        "definition" : "Utfyllende beskrivelse av tjenesten",
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
        "fixedUri" : "http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "markdown"
          }
        ]
      }
    ]
  }
}

```
