# OktServiceRequest - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktServiceRequest**

## Resource Profile: OktServiceRequest ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/OktServiceRequest | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktServiceRequest |

 
Profile on ServiceRequest for OktMessage 

**Usages:**

* Examples for this Profile: [ServiceRequest/OktServiceRequest1](ServiceRequest-OktServiceRequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/OktServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OktServiceRequest.csv), [Excel](StructureDefinition-OktServiceRequest.xlsx), [Schematron](StructureDefinition-OktServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OktServiceRequest",
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktServiceRequest",
  "version" : "0.1.0",
  "name" : "OktServiceRequest",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Profile on ServiceRequest for OktMessage",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest"
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding"
            }
          ],
          "rules" : "closed"
        },
        "min" : 2
      },
      {
        "id" : "ServiceRequest.category:serviceLevel",
        "path" : "ServiceRequest.category",
        "sliceName" : "serviceLevel",
        "short" : "Kode for tjenestenivå",
        "definition" : "Kode for tjenestenivå",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.category:serviceLevel.coding",
        "path" : "ServiceRequest.category.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/OktServiceLevelVs"
        }
      },
      {
        "id" : "ServiceRequest.category:stayType",
        "path" : "ServiceRequest.category",
        "sliceName" : "stayType",
        "short" : "Kode for oppholdstype",
        "definition" : "Kode for oppholdstype",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.category:stayType.coding",
        "path" : "ServiceRequest.category.coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/OktStayTypeVs"
        }
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "Kode for tjenesten fra IPLOS",
        "definition" : "Kode for tjenesten fra IPLOS",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ig/okt/ValueSet/IplosVs"
        }
      },
      {
        "id" : "ServiceRequest.orderDetail",
        "path" : "ServiceRequest.orderDetail",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding"
            }
          ],
          "rules" : "closed"
        },
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.orderDetail:needsCaption",
        "path" : "ServiceRequest.orderDetail",
        "sliceName" : "needsCaption",
        "short" : "Indikator for om det er behov for mer informasjon i GUI",
        "definition" : "Indikator for om det er behov for mer informasjon i GUI",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.orderDetail:needsCaption.coding",
        "path" : "ServiceRequest.orderDetail.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs",
          "code" : "needsCaption"
        }
      },
      {
        "id" : "ServiceRequest.quantity[x]",
        "path" : "ServiceRequest.quantity[x]",
        "short" : "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis",
        "definition" : "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "ServiceRequest.quantity[x].numerator",
        "path" : "ServiceRequest.quantity[x].numerator",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.quantity[x].numerator.comparator",
        "path" : "ServiceRequest.quantity[x].numerator.comparator",
        "max" : "0"
      },
      {
        "id" : "ServiceRequest.quantity[x].numerator.unit",
        "path" : "ServiceRequest.quantity[x].numerator.unit",
        "patternString" : "h"
      },
      {
        "id" : "ServiceRequest.quantity[x].numerator.system",
        "path" : "ServiceRequest.quantity[x].numerator.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "ServiceRequest.quantity[x].numerator.code",
        "path" : "ServiceRequest.quantity[x].numerator.code",
        "patternCode" : "h"
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator",
        "path" : "ServiceRequest.quantity[x].denominator",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator.value",
        "path" : "ServiceRequest.quantity[x].denominator.value",
        "patternDecimal" : 1
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator.comparator",
        "path" : "ServiceRequest.quantity[x].denominator.comparator",
        "max" : "0"
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator.unit",
        "path" : "ServiceRequest.quantity[x].denominator.unit",
        "patternString" : "wk"
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator.system",
        "path" : "ServiceRequest.quantity[x].denominator.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "ServiceRequest.quantity[x].denominator.code",
        "path" : "ServiceRequest.quantity[x].denominator.code",
        "patternCode" : "wk"
      },
      {
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "ServiceRequest.occurrence[x].end",
        "path" : "ServiceRequest.occurrence[x].end",
        "short" : "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet"
      },
      {
        "id" : "ServiceRequest.note",
        "path" : "ServiceRequest.note",
        "short" : "Utfyllende beskrivelse av tjenesten",
        "definition" : "Utfyllende beskrivelse av tjenesten",
        "min" : 1,
        "max" : "1"
      }
    ]
  }
}

```
