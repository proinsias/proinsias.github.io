---
layout: single
title: "(TIL) Sklearn: Column transformations"
date: 2020-09-11 10:00
modified: 2020-09-11 10:00
categories: til
tags:
  - sklearn
  - til
---

> The Scikit-learn pipeline has a function called ColumnTransformer
> which allows you to easily specify which columns to apply the most appropriate preprocessing
> to either via indexing or by specifying the column names.

Example from post:

```python
from sklearn import model_selection
from sklearn.linear_model import LinearRegression
from sklearn.datasets import fetch_openml
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import StandardScaler, OneHotEncoder

# Load auto93 data set which contains both categorical and numeric features
X,y = fetch_openml("auto93", version=1, as_frame=True, return_X_y=True)

# Create lists of numeric and categorical features
numeric_features = X.select_dtypes(include=['int64', 'float64']).columns
categorical_features = X.select_dtypes(include=['object']).columns

X_train, X_test, y_train, y_test = model_selection.train_test_split(X, y, random_state=0)

# Create a numeric and categorical transformer to perform preprocessing steps
numeric_transformer = Pipeline(steps=[
    ('imputer', SimpleImputer(strategy='median')),
    ('scaler', StandardScaler())])

categorical_transformer = Pipeline(steps=[
    ('imputer', SimpleImputer(strategy='constant', fill_value='missing')),
    ('onehot', OneHotEncoder(handle_unknown='ignore'))])

# Use the ColumnTransformer to apply to the correct features
preprocessor = ColumnTransformer(
    transformers=[
        ('num', numeric_transformer, numeric_features),
        ('cat', categorical_transformer, categorical_features)])

# Append regressor to the preprocessor
lr = Pipeline(steps=[('preprocessor', preprocessor),
                      ('classifier', LinearRegression())])

# Fit the complete pipeline
lr.fit(X_train, y_train)
print("model score: %.3f" % lr.score(X_test, y_test))
```

Via [towards data science](https://towardsdatascience.com/10-things-you-didnt-know-about-scikit-learn-cccc94c50e4f).
