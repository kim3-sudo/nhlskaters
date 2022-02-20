# Example Script
# Kenyon Sports Analytics Society
# 2022 Sports Analysis Competition
# Author: S Kim

###############
# Get data ----
###############
skaters <- readRDS(url('https://github.com/kim3-sudo/nhlskaters/blob/main/data/skaters.rds?raw=true'))

#####################
# Load libraries ----
#####################
library(mosaic)
library(dplyr)

#################
# Clean data ----
#################
## Remove bad observations
skaters <- subset(skaters, playerid != 'nashri02')
skaters <- subset(skaters, playerid != 'wolanch01')
skaters <- subset(skaters, playerid != 'brookad01')
## Add new column with whether that player scored more than 4 goals
skaters$morethanfour <- ifelse(skaters$goals >= 4, TRUE, FALSE)

################
# View data ----
################
View(skaters)

###########################
# Question of interest ----
###########################
## Let's divide our data into two groups for scoring:
## those who scored more than 4 points and those who scored less than 4 points.
## We'll look at defensive vs offensive players.
## We'll run a one-tailed Z-test to figure out whether the observed proportion
## of high scorers in the defensemen group is less than the observed proportion
## of high scorers in the offensemen group
## H0: p(defensemen) <= p(offensemen)
## HA: p(defensemen) < p(offensemen)

################################
# Exploratory Data Analysis ----
################################
## Make a boxplot
boxplot(goals ~ position, data = skaters)
boxplot(goals ~ role, data = skaters)
favstats(goals ~ position, data = skaters)
favstats(goals ~ role, data = skaters)
## Get tallies for proportions
tally(filter(skaters, role == "Def")$morethanfour)
tally(filter(skaters, role == "Off")$morethanfour)
tally(skaters$role)
## Check conditions
### Large sample size - GOOD
### Independence - each player shouldn't affect each other too much - GOOD 
### Normality - let's make a QQ plot
qqnorm(skaters$goals)
qqline(skaters$goals)
### MEH, but the size of sample is LARGE, 940 obs!

##########################################
# Run the two-proportions z-test in R ----
##########################################
(results <- prop.test(x = c(69, 341), n = c(326, 614), alternative = "less"))
## Low p-val of 0
## 95% CI of (-1.00, -0.292) means that we expect roughly 95% of the samples to
## produce intervals that contain the population proportion

##################
# Conclusions ----
##################
## Based on a p-value of 0.00 < 0.05 = alpha, we reject the null hypothesis H0
## that the population proportion for high-scoring skaters is the same or lower
## for defensemen than it is for offensemen and instead conclude that the
## population proportion for high-scoring skaters is lower for defensemen than
## it is for offensemen.
## If you are playing hockey and you want to be a high scorer, you should be
## an offensive player!
