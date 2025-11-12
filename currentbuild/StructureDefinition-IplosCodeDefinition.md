# Logical Model for IplosCode - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Logical Model for IplosCode**

## Logical Model: Logical Model for IplosCode 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureDefinition/IplosCodeDefinition | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:IplosCodeDefinition |

 
Logical Model for IplosCode 

**Usages:**

* Use this Logical Model: [Logical Model for OktMessage](StructureDefinition-OktMessage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/no.hl7.fhir.okt|current/StructureDefinition/IplosCodeDefinition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IplosCodeDefinition.csv), [Excel](StructureDefinition-IplosCodeDefinition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IplosCodeDefinition",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/IplosCodeDefinition",
  "version" : "0.1.0",
  "name" : "IplosCodeDefinition",
  "title" : "Logical Model for IplosCode",
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
  "description" : "Logical Model for IplosCode",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.no/fhir/ig/okt/StructureDefinition/IplosCodeDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IplosCodeDefinition",
        "path" : "IplosCodeDefinition",
        "short" : "Logical Model for IplosCode",
        "definition" : "Logical Model for IplosCode"
      },
      {
        "id" : "IplosCodeDefinition.iplosCodeDescription",
        "path" : "IplosCodeDefinition.iplosCodeDescription",
        "short" : "Beskrivelse av IPLOS-koden",
        "definition" : "Beskrivelse av IPLOS-koden",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "IplosCodeDefinition.iplosCodeLevel",
        "path" : "IplosCodeDefinition.iplosCodeLevel",
        "short" : "Nivå for IPLOS-koden",
        "definition" : "Nivå for IPLOS-koden",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "IplosCodeDefinition.iplosCodeValue",
        "path" : "IplosCodeDefinition.iplosCodeValue",
        "short" : "Verdi for IPLOS-koden",
        "definition" : "Verdi for IPLOS-koden",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "IplosCodeDefinition.iplosParentCode",
        "path" : "IplosCodeDefinition.iplosParentCode",
        "short" : "Overordnet IPLOS-kode",
        "definition" : "Overordnet IPLOS-kode",
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
