### Models

Mapping options:

* ServiceRequest
* EpisodeOfCare (see [EpisodeOfCare in VKP](https://simplifier.net/guide/velferdsteknologiskknutepunktvkp-r4/episodeofcare?version=current))
* CarePlan

#### OktEvent

| OktEvent field   | ServiceRequest field               | EpisodeOfCare field              | CarePlan field    |
|------------------|------------------------------------|----------------------------------|-------------------|
| personIdentifier | ServiceRequest.subject<sup>1</sup> | EpisodeOfCare.patient.identifier | CarePlan.subject  |
| oktMessages      | ServiceRequest<sup>2</sup>         | ?                                | CarePlan.activity |
{: .grid}

Notes:

<sup>1</sup> The personIdentifier is added as the subject to each ServiceRequest.<br/>
<sup>2</sup> OktEvent is mapped to a Bundle of ServiceRequests. Each entry in the oktMessages array is a ServiceRequest entry in the Bundle.

#### OktMessage

Candidate resources:

##### ServiceRequest

"A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."

  * Profile: [OktServiceRequest](StructureDefinition-OktServiceRequest.html)
  * Example: [OktServiceRequest1](ServiceRequest-OktServiceRequest1.html)

##### EpisodeOfCare

"An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."

  * Profile: [OktEpisodeOfCare](StructureDefinition-OktEpisodeOfCare.html)
  * Example: [OktEpisodeOfCare1](EpisodeOfCare-OktEpisodeOfCare1.html)

##### CarePlan

* TODO

##### Comparison table

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

FHIR mapping: `OktStatus -> Bundle of type searchset`

| OktStatus field  | OKT data type | FHIR field                       |
|------------------|---------------|----------------------------------|
| oktStatus        | integer       | Bundle.total                     |
| personIdentifier | string        | Bundle.link with relation "self" |
{: .grid}

Notes:

* oktStatus is "the number of active services (i.e. not on hold)"

#### ResultMessage

FHIR mapping: `ResultMessage -> Bundle of type batch-response or transaction-response`

### Interactions

For the FHIR API, `/` is the service base URL.

| *OKT API* request body | *OKT API* URL         | *OKT API* response body  | *OKT FHIR API* request body            | *OKT FHIR API* URL                              | *OKT FHIR API* response body                        |
|------------------------|-----------------------|--------------------------|----------------------------------------|-------------------------------------------------|-----------------------------------------------------|
|                        | GET /okt-events/{pid} | OktEvent                 |                                        | GET /ServieRequest?subject={pid}                | Bundle (searchset) of ServiceRequest                |
| OktEvent               | POST /okt-events      | {error} \| ResultMessage | Bundle (transaction) of ServiceRequest | POST /                                          | Bundle (transaction-response) with OperationOutcome |
|                        | GET /okt-status/{pid} | OktStatus                |                                        | GET /ServieRequest?subject={pid}&_summary=count | Bundle (searchset) without entries                  |
{: .grid}

### Terminology

Some fields of the FHIR resource contain coded data. The codes used by these fields must be defined in code systems and value sets.

| Field        | Description                                                                          | Existing definition                                                          | FHIR code system URL                                                                        |
|--------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| iplosCode    | Tjenestetype i helse- og omsorgstjenesten                                            | [FinnKode: 9151](https://finnkode.helsedirektoratet.no/adm/collections/9151) | [urn:oid:2.16.578.1.12.4.1.1.9151](CodeSystem-IplosCs.html)                                 |
| serviceLevel | On what municipal level this service is provided, i.e. district, institution, etc.   |                                                                              | [http://hl7.no/fhir/ig/okt/CodeSystem/OktServiceLevelCs](CodeSystem-OktServiceLevelCs.html) |
| stayType     | Set if service is provided on the institutional level; extent of stay at institution |                                                                              | [http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs](CodeSystem-OktStayTypeCs.html)         |
| needsCaption | Determines if there is a need for more information in the GUI                        |                                                                              | [http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs](CodeSystem-OktOrderDetailsCs.html) |
{: .grid}

### Transformation

The [OktMessage-ServiceRequest](StructureMap-OktMessage-ServiceRequest.html) StructureMap demonstrates how a structure map can be used to transform the proprietary model to a FHIR resource. The transformation can be executed with the validator CLI, after the IG is built:

`java -jar validator_cli.jar fsh-generated/resources/Binary-OktMessage1.json -output result.xml -transform http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest -ig output`
