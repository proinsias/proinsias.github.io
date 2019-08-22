---
layout: single
title: "The relativity of raw data"
date: 2016-07-26 10:25
modified: 2016-07-26 10:25
---

Data scientists often say that they want access to the 'raw data'
– but what does that term mean? 

> An important characteristics of raw data [is that it] 
> is relative to your reference frame.

> The raw data is raw to you if you have done no processing,
> manipulation, coding, or analysis of the data. In other words, the
> file you received from the person before you is untouched. But it
> may not be the rawest version of the data. The person who gave you
> the raw data may have done some computations. They have a different
> “raw data set”.

> The implication for reproducibility and replicability is that we need
> a "chain of custody" just like with evidence collected by the
> police. As long as each person keeps a copy and record of the "raw
> data" to them you can trace the provencance of the data back to the
> original source.

(via [Simply Statistics](http://simplystatistics.org/2016/07/20/relativity-raw-data/))

If you're interested in how to maintain this "chain of custody", check out [Recipy](https://github.com/recipy/recipy), an "effortless method to record provenance in Python". You simply add a single line of code to your Python code, and `Recipy` will keep track of how exactly your output files were created. 
