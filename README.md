# NHL Skaters Data - 2021-22 Season

## Basic Dataset Usage

### Get data into R:

```R
skaters <- readRDS(url('https://github.com/kim3-sudo/nhlskaters/blob/main/skaters.rda?raw=true'))
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

### Get just a CSV

Right-click [here](https://github.com/kim3-sudo/nhlskaters/raw/main/skaters.csv) and Save Link As (give it a name like `skaters.csv`).

## Variable Description

Click [here](https://github.com/kim3-sudo/nhlskaters/blob/main/variables.md) or view the `variables.md` file.

## Challenge Description

Click [here](https://github.com/kim3-sudo/nhlskaters/blob/main/challenge.md) or view the `challenge.md` file.
