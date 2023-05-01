---
layout: single
title: 'Canonical Correlation Analysis for Analyzing Sequences of Medical Billing Codes'
excerpt: Addressing the high dimensionality of these codes
date: 2017-05-25 15:51
last_modified_at: 2023-05-01 23:27:03
categories:
    - posts
tags:
    - code
    - dimensionality-reduction
    - healthcare
    - posts
---

Due to the vast number of medical billing codes, it is generally infeasible to
generate machine learning features from them as one-hot vectors.
The paper
[Canonical Correlation Analysis for Analyzing Sequences of Medical Billing Codes](https://arxiv.org/abs/1612.00516)
discusses the use of
[CCA](https://en.wikipedia.org/wiki/Canonical_correlation)
to reduce this dimensionality and capture the inherent relationships that exist between the codes.

(via [Why Should I Trust You?: Explaining the Predictions of Any Classifier](https://arxiv.org/abs/1602.04938))
