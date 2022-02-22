---
permalink: /variables/
---

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
