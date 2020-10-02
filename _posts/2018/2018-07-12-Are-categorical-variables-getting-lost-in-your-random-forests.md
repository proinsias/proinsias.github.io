---
layout: single
title: "Are categorical variables getting lost in your random forests?"
date: 2018-07-12 15:35
modified: 2018-07-12 15:35
categories: posts
tags:
  - datascience
  - machinelearning
---

I've been one-hot encoding categorical variables for as long as I have been using
sci-kit learn.
It turns out that you can lose a lot of predictive power this way,
and that alternatives do exist.

> Decision tree models can handle categorical variables without one-hot encoding them.
  However, popular implementations of decision trees (and random forests) differ
  as to whether they honor this fact.
  We show that one-hot encoding can seriously degrade tree-model performance.
  Our primary comparison is between H2O (which honors categorical variables)
  and scikit-learn (which requires them to be one-hot encoded).

(via [Are categorical variables getting lost in your random forests?](https://roamanalytics.com/2016/10/28/are-categorical-variables-getting-lost-in-your-random-forests/)
)
