Instance: OktEpisodeOfCare-Proto-19779998080-1
InstanceOf: OktEpisodeOfCare
Description: "An example OktMessage implemented as a EpisodeOfCare patient 19779998080 service 1"
Usage: #example
* extension[WeeklyExtentRatio].valueRatio.numerator.value = 15
* extension[WeeklyExtentRatio].valueRatio.numerator.unit = "h"
* extension[WeeklyExtentRatio].valueRatio.numerator.system = $ucum
* extension[WeeklyExtentRatio].valueRatio.numerator.code = #h
* extension[WeeklyExtentRatio].valueRatio.denominator.value = 1
* extension[WeeklyExtentRatio].valueRatio.denominator.unit = "wk"
* extension[WeeklyExtentRatio].valueRatio.denominator.system = $ucum
* extension[WeeklyExtentRatio].valueRatio.denominator.code = #wk
* managingOrganization = Reference(Organization/org-1-1-2-6)
* patient = Reference(Patient/Example)
* period.start = 2020-06-22
* status = #active
* type[iplosCode] = IplosCodeSystem#2 "Praktisk bistand - opplæring - daglige gjøremål"
