"A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."

  * Profile: [OktServiceRequest](StructureDefinition-OktServiceRequest.html)
  * Example: [OktServiceRequest1](ServiceRequest-OktServiceRequest1.html)

### Interactions

For the FHIR API, `/` is the service base URL.

| *OKT API* request body | *OKT API* URL         | *OKT API* response body  | *OKT FHIR API* request body            | *OKT FHIR API* URL                              | *OKT FHIR API* response body                        |
|------------------------|-----------------------|--------------------------|----------------------------------------|-------------------------------------------------|-----------------------------------------------------|
|                        | GET /okt-events/{pid} | OktEvent                 |                                        | GET /ServieRequest?subject={pid}                | Bundle (searchset) of ServiceRequest                |
| OktEvent               | POST /okt-events      | {error} \| ResultMessage | Bundle (transaction) of ServiceRequest | POST /                                          | Bundle (transaction-response) with OperationOutcome |
|                        | GET /okt-status/{pid} | OktStatus                |                                        | GET /ServieRequest?subject={pid}&_summary=count | Bundle (searchset) without entries                  |
{: .grid}

### Transformation

The [OktMessage-ServiceRequest](StructureMap-OktMessage-ServiceRequest.html) StructureMap demonstrates how a structure map can be used to transform the proprietary model to a FHIR resource. The transformation can be executed with the validator CLI, after the IG is built:

`java -jar validator_cli.jar fsh-generated/resources/Binary-OktMessage1.json -output result.xml -transform http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest -ig output`
