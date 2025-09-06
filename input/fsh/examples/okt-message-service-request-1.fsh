Instance: OktServiceRequest1
InstanceOf: OktServiceRequest
Description: "An example OktMessage implemented as a ServiceRequest"
Usage: #example
* status = #active
* intent = #order
* category[serviceLevel] = OktServiceLevelCodeSystem#dps
* category[stayType] = OktStayTypeCodeSystem#dagopphold
* code = IplosCodeSystem#1
* orderDetail[needsCaption] = OktOrderDetailsCodeSystem#needsCaption
* subject = Reference(Patient/Example)
* occurrencePeriod.start = 2025-01-01
* occurrencePeriod.end = 2025-12-31
* note[0].text = "Dette er en utfyllende beskrivelse av tjenesten"
