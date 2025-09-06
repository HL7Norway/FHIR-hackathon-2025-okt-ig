Profile: OktServiceRequest
Parent: ServiceRequest
Description: "Profile on ServiceRequest for OktMessage"
* ^experimental = true

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #closed
* category contains
    serviceLevel 1..1 and
    stayType 1..1
* category[serviceLevel].coding from OktServiceLevelValueSet (required)
* category[serviceLevel] ^short = "Kode for tjenestenivå"
* category[serviceLevel] ^definition = "Kode for tjenestenivå"
* category[stayType].coding from OktStayTypeValueSet (required)
* category[stayType] ^short = "Kode for oppholdstype"
* category[stayType] ^definition = "Kode for oppholdstype"

* code from IplosValueSet (required)
* code ^short = "Kode for tjenesten fra IPLOS"
* code ^definition = "Kode for tjenesten fra IPLOS"

* quantity[x] only Ratio
* quantityRatio.numerator 1..
* quantityRatio.numerator.comparator ..0
* quantityRatio.numerator.unit = "h"
* quantityRatio.numerator.system = $ucum
* quantityRatio.numerator.code = #h
* quantityRatio.denominator 1..
* quantityRatio.denominator.value = 1
* quantityRatio.denominator.comparator ..0
* quantityRatio.denominator.unit = "wk"
* quantityRatio.denominator.system = $ucum
* quantityRatio.denominator.code = #wk
* quantityRatio ^short = "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis"
* quantityRatio ^definition = "Sett hvis tjenesten gis i hjemmet; hvor mange timer per uke tjenesten gis"

* occurrence[x] 1..
* occurrence[x] only Period
* occurrencePeriod.end ^short = "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet"

// TODO NeedsCaption

* note 1..1
* note ^short = "Utfyllende beskrivelse av tjenesten"
* note ^definition = "Utfyllende beskrivelse av tjenesten"
