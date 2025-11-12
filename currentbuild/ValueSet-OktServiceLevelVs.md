# Tjenestenivå - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tjenestenivå**

## ValueSet: Tjenestenivå (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/ValueSet/OktServiceLevelVs | *Version*:0.1.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktServiceLevelValueSet |

 
Tjenestenivå for pleie- og omsorgstjenester. 

 **References** 

* [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)
* [OktServiceRequest](StructureDefinition-OktServiceRequest.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs`](CodeSystem-OktServiceLevelCs.md)version 📦0.1.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "OktServiceLevelVs",
  "url" : "http://hl7.no/fhir/ig/okt/ValueSet/OktServiceLevelVs",
  "version" : "0.1.0",
  "name" : "OktServiceLevelValueSet",
  "title" : "Tjenestenivå",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Tjenestenivå for pleie- og omsorgstjenester.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs"
      }
    ]
  }
}

```
