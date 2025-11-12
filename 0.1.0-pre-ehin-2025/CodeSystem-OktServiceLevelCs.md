# Tjenestenivå - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tjenestenivå**

## CodeSystem: Tjenestenivå (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:OktServiceLevelCodeSystem |

 
Tjenestenivå for pleie- og omsorgstjenester. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OktServiceLevelValueSet](ValueSet-OktServiceLevelVs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "OktServiceLevelCs",
  "url" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs",
  "version" : "0.1.0",
  "name" : "OktServiceLevelCodeSystem",
  "title" : "Tjenestenivå",
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
  "description" : "Tjenestenivå for pleie- og omsorgstjenester.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "dps",
      "display" : "Distriktspsykiatrisk senter",
      "definition" : "Distriktspsykiatrisk senter"
    }
  ]
}

```
