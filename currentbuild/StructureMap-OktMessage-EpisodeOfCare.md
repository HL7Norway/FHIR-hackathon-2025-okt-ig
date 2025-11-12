# OktMessageEpisodeOfCare - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OktMessageEpisodeOfCare**

## StructureMap: OktMessageEpisodeOfCare (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-EpisodeOfCare | *Version*:0.2.0 |
| Draft as of 2025-11-12 | *Computable Name*:OktMessageEpisodeOfCare |

 
Map OktMessage to EpisodeOfCare 

```

map "http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-EpisodeOfCare" = "OktMessageEpisodeOfCare"

// Map OktMessage to EpisodeOfCare

uses "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage" alias NhnOktMessage as source
uses "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEpisodeOfCare" alias FhirEpisodeOfCare as target

group OktMessageToEpisodeOfCare(source source : NhnOktMessage, target target : FhirEpisodeOfCare) <<types>> {
  source.weeklyExtent as weeklyExtent ->  target.extension = create('Extension') as weeklyExtentExtensionVariable,  weeklyExtentExtensionVariable.url = 'http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio',  weeklyExtentExtensionVariable.value = create('Ratio') as weeklyExtentExtensionVariableValueRatio,  weeklyExtentExtensionVariableValueRatio.numerator = create('Quantity') as numeratorVariable,  numeratorVariable.value = weeklyExtent,  numeratorVariable.unit = 'h',  numeratorVariable.system = 'http://unitsofmeasure.org',  numeratorVariable.code = 'h',  weeklyExtentExtensionVariableValueRatio.denominator = create('Quantity') as denominatorVariable,  denominatorVariable.value = '1',  denominatorVariable.unit = 'wk',  denominatorVariable.system = 'http://unitsofmeasure.org',  denominatorVariable.code = 'wk' "mapWeeklyExtent";
  source.serviceDescription as serviceDescription ->  target.extension = create('Extension') as descrExtensionVariable,  descrExtensionVariable.url = 'http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown',  descrExtensionVariable.value = create('markdown') as descrExtensionVariableValueMd,  descrExtensionVariableValueMd.value = serviceDescription "mapServiceDescription";
  source where temporaryCessation != true ->  target.status = create('code') as statusVariable,  statusVariable.value = 'active' "mapStatus";
  source where temporaryCessation = true ->  target.status = create('code') as statusVariable,  statusVariable.value = 'onhold' "mapStatus";
  source.stayType as stayType -> target.type = cc('http://hl7.no/fhir/ig/okt/CodeSystem/OktStayTypeCs', stayType) as typeVariable "mapStayType";
  source -> target.period = create('Period') as period then {
    source.startDate as startDate -> period.start = startDate "setStart";
    source.endDate as endDate -> period.end = endDate "setEnd";
  } "mapPeriod";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "OktMessage-EpisodeOfCare",
  "url" : "http://hl7.no/fhir/ig/okt/StructureMap/OktMessage-EpisodeOfCare",
  "version" : "0.2.0",
  "name" : "OktMessageEpisodeOfCare",
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
  "description" : "Map OktMessage to EpisodeOfCare",
  "structure" : [
    {
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktMessage",
      "mode" : "source",
      "alias" : "NhnOktMessage"
    },
    {
      "url" : "http://hl7.no/fhir/ig/okt/StructureDefinition/OktEpisodeOfCare",
      "mode" : "target",
      "alias" : "FhirEpisodeOfCare"
    }
  ],
  "group" : [
    {
      "name" : "OktMessageToEpisodeOfCare",
      "typeMode" : "types",
      "input" : [
        {
          "name" : "source",
          "type" : "NhnOktMessage",
          "mode" : "source"
        },
        {
          "name" : "target",
          "type" : "FhirEpisodeOfCare",
          "mode" : "target"
        }
      ],
      "rule" : [
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
              "element" : "extension",
              "variable" : "weeklyExtentExtensionVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Extension"
                }
              ]
            },
            {
              "context" : "weeklyExtentExtensionVariable",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "http://hl7.no/fhir/ig/okt/StructureDefinition/WeeklyExtentRatio"
                }
              ]
            },
            {
              "context" : "weeklyExtentExtensionVariable",
              "contextType" : "variable",
              "element" : "value",
              "variable" : "weeklyExtentExtensionVariableValueRatio",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Ratio"
                }
              ]
            },
            {
              "context" : "weeklyExtentExtensionVariableValueRatio",
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
              "context" : "weeklyExtentExtensionVariableValueRatio",
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
              "element" : "extension",
              "variable" : "descrExtensionVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Extension"
                }
              ]
            },
            {
              "context" : "descrExtensionVariable",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "http://hl7.no/fhir/ig/okt/StructureDefinition/ServiceDescriptionMarkdown"
                }
              ]
            },
            {
              "context" : "descrExtensionVariable",
              "contextType" : "variable",
              "element" : "value",
              "variable" : "descrExtensionVariableValueMd",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "markdown"
                }
              ]
            },
            {
              "context" : "descrExtensionVariableValueMd",
              "contextType" : "variable",
              "element" : "value",
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
          "name" : "mapStatus",
          "source" : [
            {
              "context" : "source",
              "condition" : "temporaryCessation != true"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "status",
              "variable" : "statusVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "code"
                }
              ]
            },
            {
              "context" : "statusVariable",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "active"
                }
              ]
            }
          ]
        },
        {
          "name" : "mapStatus",
          "source" : [
            {
              "context" : "source",
              "condition" : "temporaryCessation = true"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "status",
              "variable" : "statusVariable",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "code"
                }
              ]
            },
            {
              "context" : "statusVariable",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "onhold"
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
              "element" : "type",
              "variable" : "typeVariable",
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
          "name" : "mapPeriod",
          "source" : [
            {
              "context" : "source"
            }
          ],
          "target" : [
            {
              "context" : "target",
              "contextType" : "variable",
              "element" : "period",
              "variable" : "period",
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
                  "context" : "period",
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
                  "context" : "period",
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
        }
      ]
    }
  ]
}

```
