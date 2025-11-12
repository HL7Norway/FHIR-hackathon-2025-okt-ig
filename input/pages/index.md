### Introduction

This implementation guide gives suggestions for how the [OKT API](https://utviklerportal.nhn.no/informasjonstjenester/felles-journalloeft/okt-prototype) can be implemented with FHIR resources.

See also [EpisodeOfCare in VKP](https://simplifier.net/guide/velferdsteknologiskknutepunktvkp-r4/episodeofcare?version=current).

### Prototype API models

#### OktEvent

The [`OktEvent`](StructureDefinition-OktEvent.html) model contains a person identifier and an array of [`OktMessage`](StructureDefinition-OktMessage.html) models. The array can be mapped to a Bundle of FHIR resources, moving the person identifier to the Bundle entries.

#### OktMessage

Having discussed several alternatives, including ServiceRequest and CarePlan, the recommendation from the hackathon is to map [`OktMessage`](StructureDefinition-OktMessage.html) to [`EpisodeOfCare`](StructureDefinition-OktEpisodeOfCare.html) resources.

#### OktStatus

`OktStatus` returns the number of services for a person identifier. This can be mapped to a search with the `_summary=count` parameter, which returns a `searchset` Bundle without entries, with the `total` field showing the number of results.

`ResultMessage` can be represented as a Bundle of type `batch-response` or `transaction-response`.

### Mapping to FHIR resources

#### OktEvent

| OktEvent field   | EpisodeOfCare field               |
|------------------|-----------------------------------|
| personIdentifier | EpisodeOfCare.patient<sup>1</sup> |
| oktMessages      | EpisodeOfCare<sup>2</sup>         |
{: .grid}

Notes:

<sup>1</sup> The personIdentifier is added to each resource in the Bundle.<br/>
<sup>2</sup> OktEvent is mapped to a Bundle. Each entry in the oktMessages array is an entry in the Bundle.

#### OktMessage

Draft mapping table before the hackathon:

| OktMessage field    | OKT data type       | FHIR EpisodeOfCare field and data type |
|---------------------|---------------------|----------------------------------------|
| endDate<sup>1</sup> | string              | period.end (dateTime)                  |
| iplosCode           | IplosCodeDefinition | type (CodeableConcept)                 |
| needsCaption        | boolean             | type (CodeableConcept)                 |
| serviceDescription  | string              | extension (markdown)                   |
| serviceLevel        | string              | type (CodeableConcept)                 |
| startDate           | string              | period.start (dateTime)                |
| stayType            | string              | type (CodeableConcept)                 |
| temporaryCessation  | boolean             | status (code) = on-hold                |
| weeklyExtent        | string              | extension (Ratio<sup>2</sup>)          |
{: .grid}

Notes:

<sup>1</sup> If a set end date implies that the service has ended, then the profile can restrict with FHIRPath that status = completed implies that occurrencePeriod.end exists.<br/>
<sup>2</sup> Denominator (Quantity) fixed to 1 week in the profile.<br/>

Changes during the hackathon:

| OktMessage field    | OKT data type       | FHIR EpisodeOfCare field and data type | Changes from EHiN hackathon                            |
|---------------------|---------------------|----------------------------------------|--------------------------------------------------------|
| endDate<sup>1</sup> | string              | period.end (dateTime)                  |                                                        |
| iplosCode           | IplosCodeDefinition | type (CodeableConcept)                 |                                                        |
| needsCaption        | boolean             | type (CodeableConcept)                 | "Must Support" on serviceDescription; meta.lastUpdated |
| serviceDescription  | string              | extension (markdown)                   |                                                        |
| serviceLevel        | string              | type (CodeableConcept)                 | managingOrganization (Reference)                       |
| startDate           | string              | period.start (dateTime)                |                                                        |
| stayType            | string              | type (CodeableConcept)                 |                                                        |
| temporaryCessation  | boolean             | status (code) = on-hold                |                                                        |
| weeklyExtent        | string              | extension (Ratio)                      | Was Quantity in the profile, changed to Ratio          |
{: .grid}

#### OktStatus

| OktStatus field  | OKT data type | FHIR field                       |
|------------------|---------------|----------------------------------|
| oktStatus        | integer       | Bundle.total                     |
| personIdentifier | string        | Bundle.link with relation "self" |
{: .grid}

### API Interactions

For the FHIR API, `/` is the service base URL.

| *OKT API* request body | *OKT API* URL         | *OKT API* response body  | *OKT FHIR API* request body           | *OKT FHIR API* URL                              | *OKT FHIR API* response body                        |
|------------------------|-----------------------|--------------------------|---------------------------------------|-------------------------------------------------|-----------------------------------------------------|
|                        | GET /okt-events/{pid} | OktEvent                 |                                       | GET /EpisodeOfCare?patient={pid}                | Bundle (searchset) of EpisodeOfCare                 |
| OktEvent               | POST /okt-events      | {error} \| ResultMessage | Bundle (transaction) of EpisodeOfCare | POST /                                          | Bundle (transaction-response) with OperationOutcome |
|                        | GET /okt-status/{pid} | OktStatus                |                                       | GET /EpisodeOfCare?patient={pid}&_summary=count | Bundle (searchset) without entries                  |
{: .grid}

### Transformation

The [OktMessage-EpisodeOfCare](StructureMap-OktMessage-EpisodeOfCare.html) StructureMap demonstrates how a structure map can be used to transform the proprietary model to a FHIR resource. The transformation can be executed with the validator CLI, after the IG is built:

`java -jar validator_cli.jar fsh-generated/resources/Binary-OktMessage1.json -output result.xml -transform http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-EpisodeOfCare -ig output`
