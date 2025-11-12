# Terminology - v0.1.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

Some fields of the FHIR resource contain coded data. The codes used by these fields must be defined in code systems and value sets.

| | | | |
| :--- | :--- | :--- | :--- |
| iplosCode | Tjenestetype i helse- og omsorgstjenesten | [FinnKode: 9151](https://finnkode.helsedirektoratet.no/adm/collections/9151) | [urn:oid:2.16.578.1.12.4.1.1.9151](CodeSystem-IplosCs.md) |
| serviceLevel | On what municipal level this service is provided, i.e. district, institution, etc. |   | [http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs](CodeSystem-OktServiceLevelCs.md) |
| stayType | Set if service is provided on the institutional level; extent of stay at institution |   | [http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs](CodeSystem-OktStayTypeCs.md) |
| needsCaption | Determines if there is a need for more information in the GUI |   | [http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs](CodeSystem-OktOrderDetailsCs.md) |

