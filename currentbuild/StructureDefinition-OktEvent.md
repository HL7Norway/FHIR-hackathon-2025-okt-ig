# Logical Model for OktEvent - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Logical Model for OktEvent**

## Logical Model: Logical Model for OktEvent 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/OktEvent | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktEvent |

 
Logical Model for OktEvent 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/OktEvent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OktEvent.csv), [Excel](StructureDefinition-OktEvent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OktEvent",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEvent",
  "version" : "0.1.0",
  "name" : "OktEvent",
  "title" : "Logical Model for OktEvent",
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
  "description" : "Logical Model for OktEvent",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OktEvent",
        "path" : "OktEvent",
        "short" : "Logical Model for OktEvent",
        "definition" : "Logical Model for OktEvent"
      },
      {
        "id" : "OktEvent.personIdentifier",
        "path" : "OktEvent.personIdentifier",
        "short" : "A valid Norwegian fødselsnummer",
        "definition" : "A valid Norwegian fødselsnummer",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OktEvent.oktMessages",
        "path" : "OktEvent.oktMessages",
        "short" : "List of OktMessage associated with the event",
        "definition" : "List of OktMessage associated with the event",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage"
          }
        ]
      }
    ]
  }
}

```
