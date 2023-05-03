---
layout: single
title: 'Jq: Getting all the values of an array'
excerpt: Different approaches to extract the information you want
date: 2023-05-02
last_modified_at: 2023-05-03 01:09:29
categories:
    - til
tags:
    - jq
    - json
    - til
---

Assuming you have a json string or file containing an array such as:

```json
{
    "response": [
        1000,
        {
            "text": "blabla"
        },
        {
            "text": "blabla2"
        },
        {
            "text": "blabla3"
        }
    ]
}
```

You can extract the values of the `text` field from the array using `jq`:

```shell
> jq '.response[].text?' file.json
"blabla"
"blabla2"
"blabla3"
```

Or you can select using the type of each array element using either `jq '.response[] | objects | .text' file.json`
or `jq '.response[] | select(type=="object" and has("text")) | .text' file.json`

Finally, you can include a placeholder value for array elements without the `text` field of interest:

```shell
> jq '.response[] | if type=="object" and has("text") then .text else null end' file.json

"blabla"
"blabla2"
"blabla3"
```

Via [Stack Overflow](https://stackoverflow.com/questions/45523425/getting-all-the-values-of-an-array-with-jq).
