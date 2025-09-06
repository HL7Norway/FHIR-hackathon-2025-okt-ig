CodeSystem: OktStayTypeCodeSystem
Id: OktStayTypeCs
Title: "Oppholdstype"
Description: "Oppholdstype for pleie- og omsorgstjenester."
* ^experimental = true
* ^caseSensitive = false
* #dagopphold "Dagopphold" "Dagopphold i institusjon"

ValueSet: OktStayTypeValueSet
Id: OktStayTypeVs
Title: "Oppholdstype"
Description: "Oppholdstype for pleie- og omsorgstjenester."
* ^experimental = true
* include codes from system OktStayTypeCodeSystem
