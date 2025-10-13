# OktEpisodeOfCare - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktEpisodeOfCare**

## Resource Profile: OktEpisodeOfCare ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/OktEpisodeOfCare | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:OktEpisodeOfCare |

 
Profile on EpisodeOfCare for OktMessage 

**Usages:**

* Examples for this Profile: [EpisodeOfCare/OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/OktEpisodeOfCare)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OktEpisodeOfCare.csv), [Excel](StructureDefinition-OktEpisodeOfCare.xlsx), [Schematron](StructureDefinition-OktEpisodeOfCare.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OktEpisodeOfCare",
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEpisodeOfCare",
  "version" : "0.1.0",
  "name" : "OktEpisodeOfCare",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-13T11:41:55+00:00",
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
  "description" : "Profile on EpisodeOfCare for OktMessage",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "EpisodeOfCare",
        "path" : "EpisodeOfCare"
      },
      {
        "id" : "EpisodeOfCare.extension",
        "path" : "EpisodeOfCare.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "EpisodeOfCare.extension:weeklyExtentQuantity",
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "weeklyExtentQuantity",
        "short" : "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis",
        "definition" : "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentQuantity"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.extension:serviceDescriptionMarkdown",
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "serviceDescriptionMarkdown",
        "short" : "Utfyllende beskrivelse av tjenesten",
        "definition" : "Utfyllende beskrivelse av tjenesten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.type",
        "path" : "EpisodeOfCare.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding"
            }
          ],
          "rules" : "closed"
        }
      },
      {
        "id" : "EpisodeOfCare.type:iplosCode",
        "path" : "EpisodeOfCare.type",
        "sliceName" : "iplosCode",
        "short" : "Kode for tjenesten fra IPLOS",
        "definition" : "Kode for tjenesten fra IPLOS",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "EpisodeOfCare.type:iplosCode.coding",
        "path" : "EpisodeOfCare.type.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/IplosVs"
        }
      },
      {
        "id" : "EpisodeOfCare.type:serviceLevel",
        "path" : "EpisodeOfCare.type",
        "sliceName" : "serviceLevel",
        "short" : "Kode for tjenestenivå",
        "definition" : "Kode for tjenestenivå",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "EpisodeOfCare.type:serviceLevel.coding",
        "path" : "EpisodeOfCare.type.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/OktServiceLevelVs"
        }
      },
      {
        "id" : "EpisodeOfCare.type:stayType",
        "path" : "EpisodeOfCare.type",
        "sliceName" : "stayType",
        "short" : "Kode for oppholdstype",
        "definition" : "Kode for oppholdstype",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "EpisodeOfCare.type:stayType.coding",
        "path" : "EpisodeOfCare.type.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/OktStayTypeVs"
        }
      },
      {
        "id" : "EpisodeOfCare.type:needsCaption",
        "path" : "EpisodeOfCare.type",
        "sliceName" : "needsCaption",
        "short" : "Indikator for om det er behov for mer informasjon i GUI",
        "definition" : "Indikator for om det er behov for mer informasjon i GUI",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "EpisodeOfCare.type:needsCaption.coding",
        "path" : "EpisodeOfCare.type.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs",
          "code" : "needsCaption"
        }
      },
      {
        "id" : "EpisodeOfCare.period",
        "path" : "EpisodeOfCare.period",
        "min" : 1
      },
      {
        "id" : "EpisodeOfCare.period.start",
        "path" : "EpisodeOfCare.period.start",
        "short" : "Startdato for levering av tjenesten",
        "min" : 1
      },
      {
        "id" : "EpisodeOfCare.period.end",
        "path" : "EpisodeOfCare.period.end",
        "short" : "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet"
      }
    ]
  }
}

```
