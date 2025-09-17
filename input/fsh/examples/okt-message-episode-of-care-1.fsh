Instance: OktEpisodeOfCare1
InstanceOf: OktEpisodeOfCare
Description: "An example OktMessage implemented as a EpisodeOfCare"
Usage: #example
* extension[WeeklyExtentQuantity].valueQuantity.value = 10
* extension[ServiceDescriptionMarkdown].valueMarkdown = "Dette er en utfyllende beskrivelse av tjenesten"
* status = #active
* type[iplosCode] = IplosCodeSystem#1 "Praktisk bistand - daglige gjøremål"
* type[serviceLevel] = OktServiceLevelCodeSystem#dps
* type[stayType] = OktStayTypeCodeSystem#dagopphold
* type[needsCaption] = OktOrderDetailsCodeSystem#needsCaption
* patient = Reference(Patient/Example)
* period.start = 2025-01-01
* period.end = 2025-12-31
