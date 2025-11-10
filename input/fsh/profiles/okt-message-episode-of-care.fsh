Profile: OktEpisodeOfCare
Parent: EpisodeOfCare
Description: "Profile on EpisodeOfCare for OktMessage"
* ^experimental = true

* extension contains
    WeeklyExtentQuantity named weeklyExtentQuantity 0..1 and
    WeeklyExtentRatio named weeklyExtentRatio 0..1 and
    ServiceDescriptionMarkdown named serviceDescriptionMarkdown 0..1
* extension[weeklyExtentQuantity] ^short = "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis"
* extension[weeklyExtentQuantity] ^definition = "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis"
* extension[weeklyExtentRatio] ^short = "Sett hvis tjenesten gis i hjemmet; hvor mange timer i en periode tjenesten gis"
* extension[weeklyExtentRatio] ^definition = "Sett hvis tjenesten gis i hjemmet; hvor mange timer i en periode tjenesten gis"
* extension[serviceDescriptionMarkdown] ^short = "Utfyllende beskrivelse av tjenesten"
* extension[serviceDescriptionMarkdown] ^definition = "Utfyllende beskrivelse av tjenesten"

* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding"
* type ^slicing.rules = #closed
* type contains
    iplosCode 0..1 and
    serviceLevel 0..1 and
    stayType 0..1 and
    needsCaption 0..1
* type[iplosCode].coding from IplosValueSet (required)
* type[iplosCode] ^short = "Kode for tjenesten fra IPLOS"
* type[iplosCode] ^definition = "Kode for tjenesten fra IPLOS"
* type[serviceLevel].coding from OktServiceLevelValueSet (required)
* type[serviceLevel] ^short = "Kode for tjenestenivå"
* type[serviceLevel] ^definition = "Kode for tjenestenivå"
* type[stayType].coding from OktStayTypeValueSet (required)
* type[stayType] ^short = "Kode for oppholdstype"
* type[stayType] ^definition = "Kode for oppholdstype"
* type[needsCaption].coding 1..1
* type[needsCaption].coding = OktOrderDetailsCodeSystem#needsCaption
* type[needsCaption] ^short = "Indikator for om det er behov for mer informasjon i GUI"
* type[needsCaption] ^definition = "Indikator for om det er behov for mer informasjon i GUI"

* period 1..
* period.start 1..
* period.start ^short = "Startdato for levering av tjenesten"
* period.end ^short = "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet"
