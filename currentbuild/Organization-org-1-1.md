# org-1-1 - v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **org-1-1**

## Example Organization: org-1-1

**name**: Hjemmeboende

**partOf**: [Organization Test kommune](Organization-org-1.md)

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | ph: 23101600 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "org-1-1",
  "name" : "Hjemmeboende",
  "partOf" : {
    "reference" : "Organization/org-1"
  },
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "phone",
          "value" : "23101600"
        }
      ]
    }
  ]
}

```
