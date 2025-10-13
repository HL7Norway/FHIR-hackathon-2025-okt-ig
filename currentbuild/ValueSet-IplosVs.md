# Individbasert pleie- og omsorgsstatistikk (IPLOS) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Individbasert pleie- og omsorgsstatistikk (IPLOS)**

## ValueSet: Individbasert pleie- og omsorgsstatistikk (IPLOS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/ValueSet/IplosVs | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:IplosValueSet |

 
Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene. 

 **References** 

* [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.md)
* [OktServiceRequest](StructureDefinition-OktServiceRequest.md)

### Logical Definition (CLD)

* Include all codes defined in [`urn:oid:2.16.578.1.12.4.1.1.9151`](CodeSystem-IplosCs.md) version 📦0.1.0

 

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
  "id" : "IplosVs",
  "url" : "http://hl7.no/fhir/ig/okt/ValueSet/IplosVs",
  "version" : "0.1.0",
  "name" : "IplosValueSet",
  "title" : "Individbasert pleie- og omsorgsstatistikk (IPLOS)",
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
  "description" : "Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene.",
  "compose" : {
    "include" : [
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.9151"
      }
    ]
  }
}

```
