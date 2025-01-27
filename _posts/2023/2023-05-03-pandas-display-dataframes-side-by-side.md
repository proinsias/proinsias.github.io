---
layout: single
title: "Pandas: Display DataFrames side by side"
excerpt: Using html in a Jupyter Notebook
date: 2023-05-03 09:46
last_modified_at: 2023-05-04 01:04:40
categories:
    - til
tags:
    - pandas
    - til
---

```python
from IPython.display import display_html
from itertools import chain,cycle
def display_side_by_side(*args,titles=cycle([''])):
    # source: https://stackoverflow.com/questions/38783027/jupyter-notebook-display-two-pandas-tables-side-by-side
    html_str=''
    for df,title in zip(args, chain(titles,cycle(['</br>'])) ):
        html_str+='<th style="text-align:center"><td style="vertical-align:top">'
        html_str+="<br>"
        html_str+=f'<h2>{title}</h2>'
        html_str+=df.to_html().replace('table','table style="display:inline"')
        html_str+='</td></th>'
    display_html(html_str,raw=True)
df1 = pd.read_csv("file.csv")
df2 = pd.read_csv("file2")
display_side_by_side(df1.head(),df2.head(), titles=['Sales','Advertising'])
### Output
```

![Two DataFrames side by side](/assets/images/two-dfs-side-by-side.jpeg)
<sup>_Two DataFrames side by side. \[Photo by Lucas Soares.\]_

Via [Lucas Soares](https://python.plainenglish.io/15-data-science-snippets-to-optimize-your-coding-pipeline-93a5625d48cd).
