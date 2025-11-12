# Oppholdstype - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oppholdstype**

## CodeSystem: Oppholdstype (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs | *Version*:0.2.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktStayTypeCodeSystem |

 
Oppholdstype for pleie- og omsorgstjenester. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OktStayTypeValueSet](ValueSet-OktStayTypeVs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "OktStayTypeCs",
  "url" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs",
  "version" : "0.2.0",
  "name" : "OktStayTypeCodeSystem",
  "title" : "Oppholdstype",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-11-12T16:10:30+00:00",
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
  "description" : "Oppholdstype for pleie- og omsorgstjenester.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "dagopphold",
      "display" : "Dagopphold",
      "definition" : "Dagopphold i institusjon"
    },
    {
      "code" : "korttidsopphold",
      "display" : "Korttidsopphold",
      "definition" : "Korttidsopphold i institusjon"
    }
  ]
}

```
