# Sports Analytics Challenge - Spring 2022
## Kenyon Sports Analytics Society
## NHL Skaters Data - 2021-22 Season

This event caters to the Kenyon College student community. If you are a student at Kenyon College, you are eligible to form a team and submit as part of this competition, regardless of sports analytics, computer science, or statistics experience.

## Eligibility

In order to be eligible, you must:
- Be a current student at Kenyon College

## Entry

To enter in the contest, click [here](https://docs.google.com/forms/d/e/1FAIpQLSdkkYVjz9Lc_w2Pl6te_bWjBFrBXMZol7ND2G0byMOmA1FE6Q/viewform?usp=sf_link) to submit your team information and to get a team ID. You will receive a team ID regardless of the size of your team or if you are competing independently. You must request your team ID by 12:00 PM EST on March 21, 2022.

There is no entry fee.

## Format

- Teams can be as small as one person and as large as four people.
- Participants will be given data in `.csv` (plaintext comma-separated values), `.pki` (Python Pandas Pickle), and `.rds` (R dataset) form. Both forms are identical.
- Allowed platforms for coding are R (using RStudio) or Python (in a Jupyter Notebook, including Google Colab).
- The competition will be hosted asynchronously, and your final solution should be provided as a single annotated file uploaded to the specified submission link. We recommend using R Markdown for R developers (might we suggest submitting an Rmd file) or using Jupyter Notebooks for Python developers (might we suggest submitting an IPYNB file). Click [here](https://docs.google.com/forms/d/e/1FAIpQLSduM6TRbxYDQOGe29LVBHCYPcOlIgpSx_gZ7ph4lX_DO0F2bQ/viewform?usp=sf_link) to make your final submission.
- If you choose to submit a R Markdown file, your file should be of the `Rmd` extension. Do not submit a compiled PDF or HTML file. It will be compiled on the judge's machine. Your file output must be a PDF or HTML file. If it is neither, it will be changed to PDF. If your file does not knit properly when compiled as a PDF, it will be changed to HTML. If it still does not knit properly, your submission will be disqualified.
- If you choose to submit a Jupyter Notebook, it will be run in untrusted mode. This means that you should use the `requests` or `pandas` library to get the data using the CSV, rather than reading the file from your local filesystem.
- All submissions must be made by 12:00 PM EST on March 22, 2022.
- For prize information, see the [**Prize**](https://github.com/kim3-sudo/nhlskaters/tree/main/challenge#prize) section below.
- Participants are expected to do exploratory data analysis on the data, but beyond this, there are no expectations to the depth or breadth of analysis. We'd love to see all sorts of analyses, all the way from one-way Z-tests to machine learning.
- Plagiarism of any form will lead to immediate disqualification.

## What should I include?

- Your team ID (do *not* include your names or email addresses!)
- That this is for the 2022 K-SAS Sports Analytics Competition
- Any exploratory data analysis code that you ran
- Any analysis code that you ran, including:
  - Hypotheses
  - Conditions checks for tests
  - The tests or analyses themselves
- Any code that you ran to get plots
- A conclusion

We ***highly*** recommend that you clear your environment and run your code all the way through before submitting. This will help you avoid calling undefined objects, which is the source of most errors. Code, notebooks, or files that do not execute or render properly will be disqualified.

You can use any packages that are available on CRAN (Comprehensive R Archive Network) or which can be delivered by PyPI (using `pip`) or Anaconda (using `conda`). Judges will not install any packages from GitHub, GitLab, or any library repository other than CRAN, PyPI, or Anaconda. You do not need to include `install_packages()` statements in R or `pip install <package>` statements in Python. Judges will install all applicable packages, assuming that they are being loaded into your script by means of a `library()` statement in R or `import` statement in Python.

You may not submit any pre-compiled files, such as `.pyc` files. Your submission must be made in source code form. If compilation is required, it will be performed on the judge's machine.

As a resource, the competition organizers have provided you with a [R](https://github.com/kim3-sudo/nhlskaters/blob/main/challenge/sample.R) and a [R Markdown](https://github.com/kim3-sudo/nhlskaters/blob/main/challenge/sample.Rmd) sample file to demonstrate how we expect you to annotate your code and what you should include. You are free to run/knit these files.

## Scoring Matrix

How will I be scored?

| Criteria                                                                                                                                                                                                 | Possible Points | Your Score |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|------------|
| Your code executes with no errors.                                                                                                                                                                       | 5               |            |
| Your code is well crafted and documented, including comments and whitespace. All warnings are explained.                                                                                                 | 5               |            |
| The depth of analysis goes beyond the highest level of statistics or computer science coursework that you have completed. You have tried new things and learned something in the process.                | 10              |            |
| Your analysis is statistically correct. You have checked all conditions and proven that they are met, used the correct methods for what you are trying to accomplish, and drawn the correct conclusions. | 20              |            |
| **Total**                                                                                                                                                                                                | **50**          |            |

## Prize

After the competition period is over, anyone on a team who made a submission will receive a $5 Wiggin Street Coffee gift card. In order to be eligible, you must have been on a team with a valid team ID as a listed member.

Additionally, according to a rank by rubric points, each member of the first place team will receive an additional $20 Wiggin Street Coffee gift card. Each member of the second place team will receive an additional $15 Wiggin Street Coffee gift card. Each member of the third place team will receive an additional $10 Wiggin Street Coffee gift card.

## Support

If you have questions about an analysis (or with R/Python/RStudio), please send an email to S Kim, J Katz, or B Hartlaub (or better yet, ask in #programming in Discord!). If you have an entry or submission issue, please send an email to S Kim. If you have a question about the data itself (like the form, encoding, or need help with a variable description), please send an email to S Kim and J Katz.

# Getting Started

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

#### Using Pandas and Pickled File (Preferred)

```python
import pandas as pd
skaters = pd.read_pickle("https://github.com/kim3-sudo/nhlskaters/blob/main/data/skaters.pkl?raw=true")
```

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

# Variable Descriptions

## Dataset Description

This dataset contains player data from the 2021-22 season on all skaters in the NHL. The dataset contains 943 observations over 62 variables. Each observation is one player.

## Variable Descriptions

| Variable        | Variable Description |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `sid`             | Serial Identifier Number                                                                      |
| `player`          | Player name                                                                                                                                                                                                                                                     |
| `playerid`        | A unique player identification string                                                                                                                                                                                                                           |
| `age`             | Player age                                                                                                                                                                                                                                                      |
| `team`            | Team code                                                                                                                                                                                                                                                       |
| `position`        | Team position                                                                                                                                                                                                                                                   |
| `gamesplayed`     | Number of games played                                                                                                                                                                                                                                          |
| `cf`              | Corsi for at even strength (shots + blocks + misses)                                                                                                                                                                                                            |
| `ca`              | Corsi against at even strength (shots + blocks + misses)                                                                                                                                                                                                        |
| `cfpct`           | Corsi for % at even strength (CF/(CF + CA))  above 50% means the team was controlling the puck more often than not with this player on the ice in this situation                                                                                                |
| `cfpctrel`        | Relative Corsi for percentage at even strength (on-ice Corsi for percentage - off-ice Corsi for percentage)                                                                                                                                                     |
| `ff`              | Fenwick for at even strength (shots + misses)                                                                                                                                                                                                                   |
| `fa`              | Fenwick against at even strength (shots + misses)                                                                                                                                                                                                               |
| `ffpct`           | Fenwick for percentage at even strength (FF/(FF + FA)) - see corsiforpct                                                                                                                                                                                        |
| `ffpctrel`        | Relative Fenwick for percentage (on-ice Fenwick for percentage - off-ice Fenwick for percentage)                                                                                                                                                                |
| `toishootpct`     | Team on-ice shooting percentage, shooting percentage while this player was on the ice                                                                                                                                                                           |
| `toisavepct`      | Team on-ice save percentage, saving percentage while this player was on the ice                                                                                                                                                                                 |
| `pdo`             | Shooting percentage + save percentage                                                                                                                                                                                                                           |
| `offzonestartpct` | Offensive zone start percentage (Offensive Zone Faceoffs / (Offensive Zone Faceoffs + Defensive Zone Faceoffs) that took place while on the ice)                                                                                                                |
| `defzonestartpct` | Defensive zone start percentage (Defensive Zone Faceoffs / (Offensive Zone Faceoffs + Defensive Zone Faceoffs) that took place while on the ice)                                                                                                                |
| `toi`             | Time on the ice per 60 minutes                                                                                                                                                                                                                                  |
| `toieven`         | Time on the ice per 60 minutes at even strength                                                                                                                                                                                                                 |
| `takeaways`       | Number of takeaways                                                                                                                                                                                                                                             |
| `giveaways`       | Number of giveaways                                                                                                                                                                                                                                             |
| `expected`        | A measure of possession quality given by expected +/- given where shots came from, for and against, while this player was on the ice at even strength, based on where shots are coming from compared to league-wide shooting percentage for that shot location. |
| `attempted`       | Total shots attempted in all situations                                                                                                                                                                                                                         |
| `thrupct`         | Percentage of shots taken that go on net                                                                                                                                                                                                                        |
| `shift`           | Average shift length per game                                                                                                                                                                                                                                   |
| `estoi`           | Even strength time on ice per game                                                                                                                                                                                                                              |
| `escfpctrel`      | Even strength relative Corsi for percentage                                                                                                                                                                                                                     |
| `esgf`            | Even strength on-ice goals for per 60 minutes                                                                                                                                                                                                                   |
| `esga`            | Even strength on-ice goals against per 60 minutes                                                                                                                                                                                                               |
| `pptoi`           | Average time on ice per game while on power play                                                                                                                                                                                                                |
| `ppcfpctrel`      | Power play relative Corsi for percentage                                                                                                                                                                                                                        |
| `ppgf`            | Power play on-ice goals for per 60 minutes                                                                                                                                                                                                                      |
| `ppga`            | Power play on-ice goals against per 60 minutes                                                                                                                                                                                                                  |
| `shtoi`           | Average time on ice per game while short handed                                                                                                                                                                                                                 |
| `shcfpctrel`      | Short handed relative Corsi for percentage                                                                                                                                                                                                                      |
| `shgf`            | Short handed on-ice goals for per 60 minutes                                                                                                                                                                                                                    |
| `shga`            | Short handed on-ice goals against per 60 minutes                                                                                                                                                                                                                |
| `goals`           | Goals scored                                                                                                                                                                                                                                                    |
| `assists`         | Scoring assists                                                                                                                                                                                                                                                 |
| `points`          | Points scored                                                                                                                                                                                                                                                   |
| `pm`              | Plus/Minus                                                                                                                                                                                                                                                      |
| `pim`             | Penalties in minutes                                                                                                                                                                                                                                            |
| `ps`              | Point shares, estimate of points contributed by player                                                                                                                                                                                                          |
| `ev`              | Even strength goals                                                                                                                                                                                                                                             |
| `ppg`             | Power play goals                                                                                                                                                                                                                                                |
| `shg`             | Short handed goals                                                                                                                                                                                                                                              |
| `gwg`             | Game-winning goals                                                                                                                                                                                                                                              |
| `eva`             | Even strength assists                                                                                                                                                                                                                                           |
| `ppa`             | Power play assists                                                                                                                                                                                                                                              |
| `sha`             | Short handed assists                                                                                                                                                                                                                                            |
| `sog`             | Shots on goal                                                                                                                                                                                                                                                   |
| `shotpct`         | Shooting percentage                                                                                                                                                                                                                                             |
| `toi`             | Time on ice (in minutes)                                                                                                                                                                                                                                        |
| `toiavg`          | Average time on ice                                                                                                                                                                                                                                             |
| `blocks`          | Number of blocks                                                                                                                                                                                                                                                |
| `hits`            | Number of hits                                                                                                                                                                                                                                                  |
| `fowin`           | Faceoff wins                                                                                                                                                                                                                                                    |
| `foloss`          | Faceoff losses                                                                                                                                                                                                                                                  |
| `fopct`           | Faceoff win percentage                                                                                                                                                                                                                                          |

## Important Notes

- Some players play two positions (like PHI's Claude Giroux, who plays both center and left wing). In this case, their position has been encoded by whichever position they play more (in Giroux's case, center). This was done to aid in your analysis for data cleanliness purposes.
- For players who have played on multiple teams within the season (like Kale Clague, who played for `LAK` and `MTL`), their team has been encoded by whatever their latest team was (in Clague's case, `MTL`). This is to aid in your analysis for data cleanliness purposes.
- Riley Nash (`nashri02`) has played on three teams (`ARI`, `TBL`, and `WPG`); like others, he has been placed representing his current team.
  - To remove Riley Nash (`nashri02`)'s observation from the data, use
```R
library(dplyr)
skaters %>%
  filter(playerid == 'nashri02')
```
- Christian Wolanin (`wolanch01`) and Adam Brooks (`brookad01`) are currently not on any team (as of time of writing). They have been placed representing their last team.
  - To remove Christian Wolanin (`wolanch01`)'s and Adam Brooks (`brookad01`)'s observations from the data, use
```R
# dplyr required
skaters %>%
  filter(playerid == 'wolanch01')
skaters %>%
  filter(playerid == 'brookad01')
## These two filters are run subsequently for clarity.
## They could be stacked next to each other for brevity using the and operator.
```
