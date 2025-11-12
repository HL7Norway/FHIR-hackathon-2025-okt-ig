# Logical Model for OktMessage - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Logical Model for OktMessage**

## Logical Model: Logical Model for OktMessage 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktMessage |

 
Logical Model for OktMessage 

**Usages:**

* Use this Logical Model: [Logical Model for OktEvent](StructureDefinition-OktEvent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/OktMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OktMessage.csv), [Excel](StructureDefinition-OktMessage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OktMessage",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage",
  "version" : "0.1.0",
  "name" : "OktMessage",
  "title" : "Logical Model for OktMessage",
  "status" : "draft",
  "date" : "2025-11-12T13:38:48+00:00",
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
  "description" : "Logical Model for OktMessage",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OktMessage",
        "path" : "OktMessage",
        "short" : "Logical Model for OktMessage",
        "definition" : "Logical Model for OktMessage"
      },
      {
        "id" : "OktMessage.endDate",
        "path" : "OktMessage.endDate",
        "short" : "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet",
        "definition" : "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktMessage.iplosCode",
        "path" : "OktMessage.iplosCode",
        "short" : "IPLOS-kode for tjenesten",
        "definition" : "IPLOS-kode for tjenesten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.no/fhir/ig/okt/StructureDefinition/IplosCodeDefinition"
          }
        ]
      },
      {
        "id" : "OktMessage.needsCaption",
        "path" : "OktMessage.needsCaption",
        "short" : "Indikator for om det er behov for mer informasjon i GUI",
        "definition" : "Indikator for om det er behov for mer informasjon i GUI",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "OktMessage.serviceDescription",
        "path" : "OktMessage.serviceDescription",
        "short" : "Beskrivelse av tjenesten",
        "definition" : "Beskrivelse av tjenesten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktMessage.serviceLevel",
        "path" : "OktMessage.serviceLevel",
        "short" : "Nivå for tjenesten",
        "definition" : "Nivå for tjenesten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktMessage.startDate",
        "path" : "OktMessage.startDate",
        "short" : "Startdato for levering av tjenesten",
        "definition" : "Startdato for levering av tjenesten",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktMessage.stayType",
        "path" : "OktMessage.stayType",
        "short" : "Type opphold",
        "definition" : "Type opphold",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktMessage.temporaryCessation",
        "path" : "OktMessage.temporaryCessation",
        "short" : "Indikator for midlertidig opphør av tjenesten",
        "definition" : "Indikator for midlertidig opphør av tjenesten",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "OktMessage.weeklyExtent",
        "path" : "OktMessage.weeklyExtent",
        "short" : "Omfang av tjenesten per uke",
        "definition" : "Omfang av tjenesten per uke",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
