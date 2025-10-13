# OktServiceRequest1 - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktServiceRequest1**

## Example ServiceRequest: OktServiceRequest1

Profile: [OktServiceRequest](StructureDefinition-OktServiceRequest.md)

**status**: Active

**intent**: Order

**category**: Distriktspsykiatrisk senter, Dagopphold

**code**: Praktisk bistand - daglige gjøremål

**orderDetail**: Behov for mer informasjon i GUI

**subject**: [Jane Doe Female, DoB: 1980-01-01](Patient-Example.md)

**occurrence**: 2025-01-01 --> 2025-12-31

**note**: 

> 

Dette er en utfyllende beskrivelse av tjenesten




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "OktServiceRequest1",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/ig/okt/StructureDefinition/OktServiceRequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs",
          "code" : "dps"
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
  "code" : {
    "coding" : [
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.9151",
        "code" : "1",
        "display" : "Praktisk bistand - daglige gjøremål"
      }
    ]
  },
  "orderDetail" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs",
          "code" : "needsCaption"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/Example"
  },
  "occurrencePeriod" : {
    "start" : "2025-01-01",
    "end" : "2025-12-31"
  },
  "note" : [
    {
      "text" : "Dette er en utfyllende beskrivelse av tjenesten"
    }
  ]
}

```
