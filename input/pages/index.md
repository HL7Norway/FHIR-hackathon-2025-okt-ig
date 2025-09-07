### Models:

#### OktEvent

FHIR mapping: `OktEvent -> Bundle of ServiceRequest`

| OktEvent field   | FHIR field             |
|------------------|------------------------|
| personIdentifier | ServiceRequest.subject |
| oktMessages      | ServiceRequest         |
{: .grid}

Notes:

* Each entry in the oktMessages array is a ServiceRequest entry in the Bundle
* The personIdentifier is added as the subject to each ServiceRequest

#### OktMessage

FHIR mapping: `OktMessage -> ServiceRequest`

| OktMessage field   | OKT data type       | FHIR field and data type                             |
|--------------------|---------------------|------------------------------------------------------|
| endDate            | string              | occurrencePeriod.end (dateTime)                      |
| iplosCode          | IplosCodeDefinition | code (CodeableConcept) or category (CodeableConcept) |
| needsCaption       | boolean             | orderDetail (CodeableConcept)                        |
| serviceDescription | string              | note (Annotation) text (markdown)                    |
| serviceLevel       | string              | category (CodeableConcept)                           |
| startDate          | string              | occurrencePeriod.start (dateTime)                    |
| stayType           | string              | category (CodeableConcept)                           |
| temporaryCessation | boolean             | status (code) = on-hold                              |
| weeklyExtent       | string              | quantityRatio (Ratio)                                |
{: .grid}

Notes:

* If a set end date implies that the service has ended, then the profile can restrict with FHIRPath that status = completed implies that occurrencePeriod.end exists.
* weeklyExtent: Ratio data type, with denominator (Quantity) fixed to 1 week in the profile

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

### Interactions:

For the FHIR API, `/` is the service base URL.

| *OKT API* request body | *OKT API* URL         | *OKT API* response body  | *OKT FHIR API* request body            | *OKT FHIR API* URL                              | *OKT FHIR API* response body                        |
|------------------------|-----------------------|--------------------------|----------------------------------------|-------------------------------------------------|-----------------------------------------------------|
|                        | GET /okt-events/{pid} | OktEvent                 |                                        | GET /ServieRequest?subject={pid}                | Bundle (searchset) of ServiceRequest                |
| OktEvent               | POST /okt-events      | {error} \| ResultMessage | Bundle (transaction) of ServiceRequest | POST /                                          | Bundle (transaction-response) with OperationOutcome |
|                        | GET /okt-status/{pid} | OktStatus                |                                        | GET /ServieRequest?subject={pid}&_summary=count | Bundle (searchset) without entries                  |
{: .grid}

### Terminology:

Some fields of the FHIR resource contain coded data. The codes used by these fields must be defined in code systems and value sets.

| Field        | Description                                                                          | Existing definition                                                          | FHIR code system URL                                                                        |
|--------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| iplosCode    | Tjenestetype i helse- og omsorgstjenesten                                            | [FinnKode: 9151](https://finnkode.helsedirektoratet.no/adm/collections/9151) | [urn:oid:2.16.578.1.12.4.1.1.9151](CodeSystem-IplosCs.html)                                 |
| serviceLevel | On what municipal level this service is provided, i.e. district, institution, etc.   |                                                                              | [http://hl7.no/fhir/ig/okt/ValueSet/OktServiceLevelVs](ValueSet-OktServiceLevelVs.html)     |
| stayType     | Set if service is provided on the institutional level; extent of stay at institution |                                                                              | [http://hl7.no/fhir/ig/okt/ValueSet/OktStayTypeVs](ValueSet-OktStayTypeVs.html)             |
| needsCaption | Determines if there is a need for more information in the GUI                        |                                                                              | [http://hl7.no/fhir/ig/okt/CodeSystem/OktOrderDetailsCs](CodeSystem-OktOrderDetailsCs.html) |
{: .grid}
