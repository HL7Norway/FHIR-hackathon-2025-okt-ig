Instance: OktEpisodeOfCareH1
InstanceOf: OktEpisodeOfCare
Description: "An example OktMessage implemented as a EpisodeOfCare patient 19779998080 service 1"
Usage: #example
* extension[WeeklyExtentQuantity].valueQuantity.value = 15
* extension[ServiceDescriptionMarkdown].valueMarkdown = "Dette er en utfyllende beskrivelse av tjenesten"
* status = #active
* type[iplosCode] = IplosCodeSystem#2 "Praktisk bistand - opplæring - daglige gjøremål"
* type[serviceLevel] = OktServiceLevelCodeSystem#dps
* type[stayType] = OktStayTypeCodeSystem#dagopphold
* type[needsCaption] = OktOrderDetailsCodeSystem#needsCaption
* patient = Reference(Patient/Example)
* period.start = 2025-01-01
* period.end = 2025-12-31
