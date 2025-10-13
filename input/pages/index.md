### Introduction

This implementation guide gives suggestions for how the [OKT API](https://utviklerportal.nhn.no/informasjonstjenester/felles-journalloeft/okt-prototype) can be implemented with FHIR resources.

### Prototype API models

#### OktEvent

The [`OktEvent`](StructureDefinition-OktEvent.html) model contains a person identifier and an array of [`OktMessage`](StructureDefinition-OktMessage.html) models. The array can be mapped to a Bundle of FHIR resources, moving the person identifier to the Bundle entries.

#### OktMessage

Mapping [`OktMessage`](StructureDefinition-OktMessage.html) has several FHIR resource candidates:

* ServiceRequest
* EpisodeOfCare
* CarePlan

#### OktStatus

`OktStatus` returns the number of services for a person identifier. This can be mapped to a search with the `_summary=count` parameter, which returns a `searchset` Bundle without entries, with the `total` field showing the number of results.

`ResultMessage` can be represented as aBundle of type `batch-response` or `transaction-response`.

### Summary tables

#### OktEvent

| OktEvent field   | ServiceRequest field               | EpisodeOfCare field               | CarePlan field    |
|------------------|------------------------------------|-----------------------------------|-------------------|
| personIdentifier | ServiceRequest.subject<sup>1</sup> | EpisodeOfCare.patient<sup>1</sup> | CarePlan.subject  |
| oktMessages      | ServiceRequest<sup>2</sup>         | EpisodeOfCare<sup>2</sup>         | CarePlan.activity |
{: .grid}

Notes:

<sup>1</sup> The personIdentifier is added to each resource in the Bundle.<br/>
<sup>2</sup> OktEvent is mapped to a Bundle. Each entry in the oktMessages array is an entry in the Bundle.

#### OktMessage

| OktMessage field    | OKT data type       | FHIR ServiceRequest field and data type | FHIR EpisodeOfCare field and data type | FHIR CarePlan field and data type                     |
|---------------------|---------------------|-----------------------------------------|----------------------------------------|-------------------------------------------------------|
| endDate<sup>1</sup> | string              | occurrencePeriod.end (dateTime)         | period.end (dateTime)                  | period.end (dateTime)                                 |
| iplosCode           | IplosCodeDefinition | code (CodeableConcept)                  | type (CodeableConcept)                 | activity.detail.code  (CodeableConcept)               |
| needsCaption        | boolean             | orderDetail (CodeableConcept)           | type (CodeableConcept)                 | category (CodeableConcept)                            |
| serviceDescription  | string              | note (Annotation) text (markdown)       | extension (markdown)                   | description (string)                                  |
| serviceLevel        | string              | category (CodeableConcept)              | type (CodeableConcept)                 | category (CodeableConcept)                            |
| startDate           | string              | occurrencePeriod.start (dateTime)       | period.start (dateTime)                | period.start (dateTime)                               |
| stayType            | string              | category (CodeableConcept)              | type (CodeableConcept)                 | category (CodeableConcept)                            |
| temporaryCessation  | boolean             | status (code) = on-hold                 | status (code) = on-hold                | status (code) = on-hold                               |
| weeklyExtent        | string              | quantityRatio (Ratio<sup>2</sup>)       | extension (Ratio)                      | activity.detail.quantity (SimpleQuantity)<sup>3</sup> |
{: .grid}

Notes:

<sup>1</sup> If a set end date implies that the service has ended, then the profile can restrict with FHIRPath that status = completed implies that occurrencePeriod.end exists.<br/>
<sup>2</sup> Denominator (Quantity) fixed to 1 week in the profile.<br/>
<sup>3</sup> SimpleQuantity doesn't allow declaring that the amount is a weekly amount.

#### OktStatus

| OktStatus field  | OKT data type | FHIR field                       |
|------------------|---------------|----------------------------------|
| oktStatus        | integer       | Bundle.total                     |
| personIdentifier | string        | Bundle.link with relation "self" |
{: .grid}
