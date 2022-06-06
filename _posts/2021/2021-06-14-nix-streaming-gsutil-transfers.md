---

layout: single
title: "Nix: Streaming gsutil transfers"
date: 2021-06-14 19:07
modified: 2021-06-14 19:07
categories: til
tags:

- gsutil
- nix
- til

---

> Cloud Storage supports streaming transfers, which allow you to stream data to and from your Cloud Storage account without requiring that the data first be saved to a file.

```shell
# Stream uploads.
sort data_measurements.json | gsutil cp - gs://my_app_bucket/data_measurements.json

# Stream downloads.
gsutil -m cp gs://my_app_bucket/data_measurements.json.gz - | gunzip | jq '.'
```

Via [Google Cloud docs](https://cloud.google.com/storage/docs/streaming).
