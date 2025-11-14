# OktEvent1 - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktEvent1**

## Example Binary: OktEvent1

This content is an example of the [Logical Model for OktEvent](StructureDefinition-OktEvent.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEvent",
  "oktMessages": [
    {
      "iplosCode": {
        "iplosCodeLevel": "1",
        "iplosCodeValue": "02",
        "iplosParentCode": "0",
        "iplosCodeDescription": "Praktisk bistand - opplæring - daglige gjøremål"
      },
      "startDate": "2025-09-01",
      "endDate": "2025-09-30",
      "needsCaption": true,
      "serviceDescription": "Hjemmetjeneste - praktisk bistand",
      "serviceLevel": "Nivå 2",
      "stayType": "korttidsopphold",
      "temporaryCessation": false,
      "weeklyExtent": "7.5"
    }
  ],
  "personIdentifier": "19779998080"
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
