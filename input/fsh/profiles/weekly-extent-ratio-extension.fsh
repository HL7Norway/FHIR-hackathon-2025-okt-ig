Extension: WeeklyExtentRatio
Id: WeeklyExtentRatio
Title: "Weekly Extent Ratio"
Description: "The ratio of the service provided"
Context: EpisodeOfCare
* . 0..1
* value[x] 1..
* value[x] only Ratio
* valueRatio.numerator.unit = "h"
* valueRatio.numerator.system = $ucum
* valueRatio.numerator.code = #h
* valueRatio.denominator.unit = "wk"
* valueRatio.denominator.system = $ucum
* valueRatio.denominator.code = #wk
* valueRatio.denominator.value = 1
