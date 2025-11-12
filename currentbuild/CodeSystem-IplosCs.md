# Individbasert pleie- og omsorgsstatistikk (IPLOS) - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Individbasert pleie- og omsorgsstatistikk (IPLOS)**

## CodeSystem: Individbasert pleie- og omsorgsstatistikk (IPLOS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:urn:oid:2.16.578.1.12.4.1.1.9151 | *Version*:0.2.0 |
| Draft as of 2025-11-12 | *Computable Name*:IplosCodeSystem |

 
Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IplosValueSet](ValueSet-IplosVs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IplosCs",
  "url" : "urn:oid:2.16.578.1.12.4.1.1.9151",
  "version" : "0.2.0",
  "name" : "IplosCodeSystem",
  "title" : "Individbasert pleie- og omsorgsstatistikk (IPLOS)",
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
  "description" : "Individbasert pleie- og omsorgsstatistikk (IPLOS) er et nasjonalt register som inneholder opplysninger om personer som mottar pleie- og omsorgstjenester fra kommunen. Registeret skal gi grunnlag for styring, planlegging, finansiering og kvalitetsforbedring av pleie- og omsorgstjenestene.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 25,
  "concept" : [
    {
      "code" : "1",
      "display" : "Praktisk bistand - daglige gjøremål"
    },
    {
      "code" : "2",
      "display" : "Praktisk bistand - opplæring - daglige gjøremål"
    },
    {
      "code" : "3",
      "display" : "Praktisk bistand - brukerstyrt - personlig assistanse"
    },
    {
      "code" : "4",
      "display" : "Dagaktivitetstilbud"
    },
    {
      "code" : "5",
      "display" : "Matombringing"
    },
    {
      "code" : "6",
      "display" : "Trygghetsalarm"
    },
    {
      "code" : "7",
      "display" : "Avlastning utenfor institusjon"
    },
    {
      "code" : "8",
      "display" : "Avlastning i institusjon"
    },
    {
      "code" : "9",
      "display" : "Støttekontakt"
    },
    {
      "code" : "11",
      "display" : "Omsorgsstønad"
    },
    {
      "code" : "14",
      "display" : "Bruk av tvang psykisk utviklingshemning – planlagte tiltak"
    },
    {
      "code" : "15",
      "display" : "Helsetjenester i hjemmet"
    },
    {
      "code" : "17",
      "display" : "Dagopphold i institusjon"
    },
    {
      "code" : "18",
      "display" : "Tidsbegrenset opphold - utredning/behandling"
    },
    {
      "code" : "19",
      "display" : "Tidsbegrenset opphold - habilitering/rehabilitering"
    },
    {
      "code" : "20",
      "display" : "Tidsbegrenset opphold - annet"
    },
    {
      "code" : "21",
      "display" : "Langtidsopphold i institusjon"
    },
    {
      "code" : "22",
      "display" : "Nattopphold i institusjon"
    },
    {
      "code" : "23",
      "display" : "Bruk av tvang psykisk utviklingshemning – nødsituasjoner"
    },
    {
      "code" : "24",
      "display" : "Helsehjelp med tvang"
    },
    {
      "code" : "25",
      "display" : "Kommunal øyeblikkelig hjelp - døgnopphold"
    },
    {
      "code" : "26",
      "display" : "Lokaliseringsteknologi (GPS)"
    },
    {
      "code" : "27",
      "display" : "Elektronisk medisineringsstøtte"
    },
    {
      "code" : "28",
      "display" : "Digitalt tilsyn"
    },
    {
      "code" : "29",
      "display" : "Bolig som kommunen disponerer for helse- og omsorgsformål"
    }
  ]
}

```
