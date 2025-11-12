# Indikatorer for tjenesten - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indikatorer for tjenesten**

## CodeSystem: Indikatorer for tjenesten (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:OktOrderDetailsCodeSystem |

 
Indikatorer med øvrige detaljer om tjenesten. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OktOrderDetailsValueSet](ValueSet-OktOrderDetailsVs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "OktOrderDetailsCs",
  "url" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs",
  "version" : "0.1.0",
  "name" : "OktOrderDetailsCodeSystem",
  "title" : "Indikatorer for tjenesten",
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
  "description" : "Indikatorer med øvrige detaljer om tjenesten.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "needsCaption",
      "display" : "Behov for mer informasjon i GUI",
      "definition" : "Indikator for om det er behov for mer informasjon i GUI"
    }
  ]
}

```
