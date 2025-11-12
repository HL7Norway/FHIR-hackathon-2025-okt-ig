# OktMessageServiceRequest - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktMessageServiceRequest**

## StructureMap: OktMessageServiceRequest (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest | *Version*:0.2.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktMessageServiceRequest |

 
Map OktMessage to ServiceRequest 

```

map "http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest" = "OktMessageServiceRequest"

// Map OktMessage to ServiceRequest

uses "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage" alias NhnOktMessage as source
uses "http://hl7.org/fhir/StructureDefinition/ServiceRequest" alias FhirServiceRequest as target

group OktMessageToServiceRequest(source source : NhnOktMessage, target target : FhirServiceRequest) <<types>> {
  source -> target.occurrence = create('Period') as occurrencePeriod then {
    source.startDate as startDate -> occurrencePeriod.start = startDate "setStart";
    source.endDate as endDate -> occurrencePeriod.end = endDate "setEnd";
  } "mapOccurrencePeriod";
  source.serviceDescription as serviceDescription ->  target.note = create('Annotation') as noteVariable,  noteVariable.text = serviceDescription "mapServiceDescription";
  source.stayType as stayType -> target.category = cc('http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs', stayType) as categoryVariable "mapStayType";
  source.weeklyExtent as weeklyExtent ->  target.quantity = create('Ratio') as quantityVariable,  quantityVariable.numerator = create('Quantity') as numeratorVariable,  numeratorVariable.value = weeklyExtent,  numeratorVariable.unit = 'h',  numeratorVariable.system = 'http://unitsofmeasure.org',  numeratorVariable.code = 'h',  quantityVariable.denominator = create('Quantity') as denominatorVariable,  denominatorVariable.value = '1',  denominatorVariable.unit = 'wk',  denominatorVariable.system = 'http://unitsofmeasure.org',  denominatorVariable.code = 'wk' "mapWeeklyExtent";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "OktMessage-ServiceRequest",
  "url" : "http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-ServiceRequest",
  "version" : "0.2.0",
  "name" : "OktMessageServiceRequest",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-11-12T16:10:30+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [
    {
      "name" : "HL7 Norway",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://hl7.no/"
        }
      ]
    }
  ],
  "description" : "Map OktMessage to ServiceRequest",
  "structure" : [
    {
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage",
      "mode" : "source",
      "alias" : "NhnOktMessage"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
      "mode" : "target",
      "alias" : "FhirServiceRequest"
    }
  ],
  "group" : [
    {
      "name" : "OktMessageToServiceRequest",
      "typeMode" : "types",
      "input" : [
        {
          "name" : "source",
          "type" : "NhnOktMessage",
          "mode" : "source"
        },
        {
          "name" : "target",
          "type" : "FhirServiceRequest",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "mapOccurrencePeriod",
          "source" : [
            {
              "context" : "source"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "occurrence",
              "variable" : "occurrencePeriod",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Period"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "setStart",
              "source" : [
                {
                  "context" : "source",
                  "element" : "startDate",
                  "variable" : "startDate"
                }
              ],
              "target" : [
                {
                  "context" : "occurrencePeriod",
                  "contextType" : "variable",
                  "element" : "start",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "startDate"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "setEnd",
              "source" : [
                {
                  "context" : "source",
                  "element" : "endDate",
                  "variable" : "endDate"
                }
              ],
              "target" : [
                {
                  "context" : "occurrencePeriod",
                  "contextType" : "variable",
                  "element" : "end",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "endDate"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "name" : "mapServiceDescription",
          "source" : [
            {
              "context" : "source",
              "element" : "serviceDescription",
              "variable" : "serviceDescription"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "note",
              "variable" : "noteVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Annotation"
                }
              ]
            },
            {
              "context" : "noteVariable",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueId" : "serviceDescription"
                }
              ]
            }
          ]
        },
        {
          "name" : "mapStayType",
          "source" : [
            {
              "context" : "source",
              "element" : "stayType",
              "variable" : "stayType"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "category",
              "variable" : "categoryVariable",
              "transform" : "cc",
              "parameter" : [
                {
                  "valueString" : "http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs"
                },
                {
                  "valueId" : "stayType"
                }
              ]
            }
          ]
        },
        {
          "name" : "mapWeeklyExtent",
          "source" : [
            {
              "context" : "source",
              "element" : "weeklyExtent",
              "variable" : "weeklyExtent"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "quantity",
              "variable" : "quantityVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Ratio"
                }
              ]
            },
            {
              "context" : "quantityVariable",
              "contextType" : "variable",
              "element" : "numerator",
              "variable" : "numeratorVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Quantity"
                }
              ]
            },
            {
              "context" : "numeratorVariable",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueId" : "weeklyExtent"
                }
              ]
            },
            {
              "context" : "numeratorVariable",
              "contextType" : "variable",
              "element" : "unit",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "h"
                }
              ]
            },
            {
              "context" : "numeratorVariable",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "http://unitsofmeasure.org"
                }
              ]
            },
            {
              "context" : "numeratorVariable",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "h"
                }
              ]
            },
            {
              "context" : "quantityVariable",
              "contextType" : "variable",
              "element" : "denominator",
              "variable" : "denominatorVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Quantity"
                }
              ]
            },
            {
              "context" : "denominatorVariable",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "1"
                }
              ]
            },
            {
              "context" : "denominatorVariable",
              "contextType" : "variable",
              "element" : "unit",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "wk"
                }
              ]
            },
            {
              "context" : "denominatorVariable",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "http://unitsofmeasure.org"
                }
              ]
            },
            {
              "context" : "denominatorVariable",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "wk"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
