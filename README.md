# NHL Skaters Data - 2021-22 Season

## Basic Dataset Usage

### Get data into R:

```R
skaters <- readRDS(url('https://github.com/kim3-sudo/nhlskaters/blob/main/data/skaters.rds?raw=true'))
```

Data should now be loaded into an object called `skaters`.

### Some starter code

```R
# EDA
head(skaters)
mean(skaters$age)
median(skaters$age)
# A boxplot, perschlaps?
boxplot(skaters$age)
boxplot(age ~ position, data = skaters)
# Maybe an ANOVA?
summary(aov(age ~ position, data = skaters))
plot(aov(age ~ position, data = skaters))
```

### Get data into Python:

#### Using Pandas

```python
import pandas as pd
skaters = pd.read_csv("https://github.com/kim3-sudo/nhlskaters/raw/main/data/skaters.csv")
```

#### Using requests

```python
import requests
response = requests.get("https://github.com/kim3-sudo/nhlskaters/raw/main/data/skaters.csv").text
# YOU MUST NOW PARSE response ACCORDING TO THE TOOL THAT NOW NEEDS IT
```
### Get just a CSV

Right-click [here](https://github.com/kim3-sudo/nhlskaters/raw/main/data/skaters.csv) and Save Link As (give it a name like `skaters.csv`). Make sure you save it as a `.csv`, not a `.txt`, otherwise you're going to have a bad time.

## K-SAS Challenge Description

Click [here](https://github.com/kim3-sudo/nhlskaters/tree/main/challenge) or view the `challenge` directory and its README.

## Variable Description

Click [here](https://github.com/kim3-sudo/nhlskaters/blob/main/variables.md) or view the `variables.md` file.
