---
layout: single
title: "Probabilistic interpretation of AUC"
date: 2020-03-18
last_modified_at: 2025-07-25 00:48:55
excerpt: How to explain it to a layperson
categories:
    - tips
tags:
    - auc
    - ml
    - machine-learning
    - probability
---

The area under the ROC (receiver operating characteristic) curve, or
[AUC](https://en.wikipedia.org/wiki/Receiver_operating_characteristic#Area_under_the_curve),
is a popular and robust metric for machine learning classification.
However, one issue with its use is that it is not as easy to explain to a client what it is and why you are using it.
Over at [0-fold Cross-Validation](https://www.alexejgossmann.com/),
Alexej Gossmann has a useful post on how to think of the AUC probabilistically:

> In other words, if the classification algorithm distinguishes "positive" and "negative" examples
> (e.g., disease status), then AUC is the probability of correct ranking of a random "positive"-"negative" pair.

From this, you can derive a simple formula to compute AUC on a finite sample as an alternative to the
[trapezoidal rule](https://en.wikipedia.org/wiki/Trapezoidal_rule):

> Among all "positive"-"negative" pairs in the dataset compute the proportion of those which are ranked correctly
> by the evaluated classification algorithm.

And as a reminder of why the AUC has many advantages compared to other 'single number" performance measures:

> -   It has a really nice probabilistic meaning!
> -   Independence of the decision threshold.
> -   Invariance to prior class probabilities or class prevalence in the data.
> -   Can choose/change a decision threshold based on cost-benefit analysis after model training.
> -   Extensively used in machine learning, and in medical research.
