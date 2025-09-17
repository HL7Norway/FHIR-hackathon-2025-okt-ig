Logical: OktEvent
Title: "Logical Model for OktEvent"
Description: "Logical Model for OktEvent"
Characteristics: #can-be-target
* personIdentifier 1..1 string "A valid Norwegian fødselsnummer"
* oktMessages 1..* OktMessage "List of OktMessage associated with the event"
