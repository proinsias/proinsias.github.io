---
layout: single
title: "Sklearn: Tree diagram"
date: 2020-09-11
last_modified_at: 2023-04-26 13:22:37
excerpt: Via the plot_tree command
categories:
    - til
tags:
    - sklearn
    - til
    - tree
---

> The `plot_tree()` function allows you to create a diagram of steps present in a decision tree model:

```python
import matplotlib.pyplot as plt
from sklearn import metrics, model_selection
from sklearn.tree import DecisionTreeClassifier, plot_tree
from sklearn.datasets import load_breast_cancer

X,y = load_breast_cancer(return_X_y = True)

X_train, X_test, y_train, y_test = model_selection.train_test_split(X, y, random_state=0)
clf = DecisionTreeClassifier()
clf.fit(X_train, y_train)

plot_tree(clf, filled=True)
plt.show()
```

![Decision tree diagram](https://miro.medium.com/max/1400/1*tOaFzz-i-9jNUVGY0QQ7eA.png)

Via [towards data science](https://towardsdatascience.com/10-things-you-didnt-know-about-scikit-learn-cccc94c50e4f).
