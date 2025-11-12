# Implementation with ServiceRequest - v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation with ServiceRequest**

## Implementation with ServiceRequest

"A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."

* Profile: [OktServiceRequest](StructureDefinition-OktServiceRequest.md)
* Example: [OktServiceRequest1](ServiceRequest-OktServiceRequest1.md)

### Interactions

For the FHIR API, `/` is the service base URL.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
|   | GET /okt-events/{pid} | OktEvent |   | GET /ServieRequest?subject={pid} | Bundle (searchset) of ServiceRequest |
| OktEvent | POST /okt-events | {error} | ResultMessage | Bundle (transaction) of ServiceRequest | POST / | Bundle (transaction-response) with OperationOutcome |
|   | GET /okt-status/{pid} | OktStatus |   | GET /ServieRequest?subject={pid}&_summary=count | Bundle (searchset) without entries |

### Transformation

The [OktMessage-ServiceRequest](StructureMap-OktMessage-ServiceRequest.md) StructureMap demonstrates how a structure map can be used to transform the proprietary model to a FHIR resource. The transformation can be executed with the validator CLI, after the IG is built:

`java -jar validator_cli.jar fsh-generated/resources/Binary-OktMessage1.json -output result.xml -transform http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest -ig output`

