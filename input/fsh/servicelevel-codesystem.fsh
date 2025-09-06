CodeSystem: OktServiceLevelCodeSystem
Id: OktServiceLevelCs
Title: "Tjenestenivå"
Description: "Tjenestenivå for pleie- og omsorgstjenester."
* ^experimental = true
* ^caseSensitive = false
* #dps "Distriktspsykiatrisk senter" "Distriktspsykiatrisk senter"

ValueSet: OktServiceLevelValueSet
Id: OktServiceLevelVs
Title: "Tjenestenivå"
Description: "Tjenestenivå for pleie- og omsorgstjenester."
* ^experimental = true
* include codes from system OktServiceLevelCodeSystem
