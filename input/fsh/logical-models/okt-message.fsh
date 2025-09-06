Logical: OktMessage
Title: "Logical Model for OktMessage"
Description: "Logical Model for OktMessage"
Characteristics: #can-be-target
* endDate 0..1 string "Sluttdato for levering av tjenesten hvis leveringen av en tjeneste er avsluttet"
* iplosCode 0..1 IplosCodeDefinition "IPLOS-kode for tjenesten"
* needsCaption 0..1 boolean "Indikator for om det er behov for mer informasjon i GUI"
* serviceDescription 0..1 string "Beskrivelse av tjenesten"
* serviceLevel 0..1 string "Nivå for tjenesten"
* startDate 1..1 string "Startdato for levering av tjenesten"
* stayType 0..1 string "Type opphold"
* temporaryCessation 0..1 boolean "Indikator for midlertidig opphør av tjenesten"
* weeklyExtent 0..1 string "Omfang av tjenesten per uke"
