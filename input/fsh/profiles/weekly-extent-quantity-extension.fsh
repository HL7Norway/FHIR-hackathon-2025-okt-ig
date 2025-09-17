Extension: WeeklyExtentQuantity
Id: WeeklyExtentQuantity
Title: "Weekly Extent Quantity"
Description: "The quantity of the service provided on a weekly basis"
Context: EpisodeOfCare
* . 0..1
* value[x] 1..
* value[x] only Quantity
* valueQuantity.unit = "h"
* valueQuantity.system = $ucum
* valueQuantity.code = #h
