# NHL Skaters Data - 2021-22 Season

## Usage

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

## Variable Descriptions

| Variable        | Variable Description |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| rank            | Rank                                                                                          |
| player          | Player name                                                                                                                                                                                                                                                     |
| playerid        | A unique player identification string                                                                                                                                                                                                                           |
| age             | Player age                                                                                                                                                                                                                                                      |
| team            | Team code                                                                                                                                                                                                                                                       |
| position        | Team position                                                                                                                                                                                                                                                   |
| gamesplayed     | Number of games played                                                                                                                                                                                                                                          |
| cf              | Corsi for at even strength (shots + blocks + misses)                                                                                                                                                                                                            |
| ca              | Corsi against at even strength (shots + blocks + misses)                                                                                                                                                                                                        |
| cfpct           | Corsi for % at even strength (CF/(CF + CA))  above 50% means the team was controlling the puck more often than not with this player on the ice in this situation                                                                                                |
| cfpctrel        | Relative Corsi for percentage at even strength (on-ice Corsi for percentage - off-ice Corsi for percentage)                                                                                                                                                     |
| ff              | Fenwick for at even strength (shots + misses)                                                                                                                                                                                                                   |
| fa              | Fenwick against at even strength (shots + misses)                                                                                                                                                                                                               |
| ffpct           | Fenwick for percentage at even strength (FF/(FF + FA)) - see corsiforpct                                                                                                                                                                                        |
| ffpctrel        | Relative Fenwick for percentage (on-ice Fenwick for percentage - off-ice Fenwick for percentage)                                                                                                                                                                |
| toishootpct     | Team on-ice shooting percentage, shooting percentage while this player was on the ice                                                                                                                                                                           |
| toisavepct      | Team on-ice save percentage, saving percentage while this player was on the ice                                                                                                                                                                                 |
| pdo             | Shooting percentage + save percentage                                                                                                                                                                                                                           |
| offzonestartpct | Offensive zone start percentage (Offensive Zone Faceoffs / (Offensive Zone Faceoffs + Defensive Zone Faceoffs) that took place while on the ice)                                                                                                                |
| defzonestartpct | Defensive zone start percentage (Defensive Zone Faceoffs / (Offensive Zone Faceoffs + Defensive Zone Faceoffs) that took place while on the ice)                                                                                                                |
| toi             | Time on the ice per 60 minutes                                                                                                                                                                                                                                  |
| toieven         | Time on the ice per 60 minutes at even strength                                                                                                                                                                                                                 |
| takeaways       | Number of takeaways                                                                                                                                                                                                                                             |
| giveaways       | Number of giveaways                                                                                                                                                                                                                                             |
| expected        | A measure of possession quality given by expected +/- given where shots came from, for and against, while this player was on the ice at even strength, based on where shots are coming from compared to league-wide shooting percentage for that shot location  |
| attempted       | Total shots attempted in all situations                                                                                                                                                                                                                         |
| thrupct         | Percentage of shots taken that go on net                                                                                                                                                                                                                        |
| shift           | Average shift length per game                                                                                                                                                                                                                                   |
| estoi           | Even strength time on ice per game                                                                                                                                                                                                                              |
| escfpctrel      | Even strength relative Corsi for percentage                                                                                                                                                                                                                     |
| esgf            | Even strength on-ice goals for per 60 minutes                                                                                                                                                                                                                   |
| esga            | Even strength on-ice goals against per 60 minutes                                                                                                                                                                                                               |
| pptoi           | Average time on ice per game while on power play                                                                                                                                                                                                                |
| ppcfpctrel      | Power play relative Corsi for percentage                                                                                                                                                                                                                        |
| ppgf            | Power play on-ice goals for per 60 minutes                                                                                                                                                                                                                      |
| ppga            | Power play on-ice goals against per 60 minutes                                                                                                                                                                                                                  |
| shtoi           | Average time on ice per game while short handed                                                                                                                                                                                                                 |
| shcfpctrel      | Short handed relative Corsi for percentage                                                                                                                                                                                                                      |
| shgf            | Short handed on-ice goals for per 60 minutes                                                                                                                                                                                                                    |
| shga            | Short handed on-ice goals against per 60 minutes                                                                                                                                                                                                                |
| goals           | Goals scored                                                                                                                                                                                                                                                    |
| assists         | Scoring assists                                                                                                                                                                                                                                                 |
| points          | Points scored                                                                                                                                                                                                                                                   |
| pm              | Plus/Minus                                                                                                                                                                                                                                                      |
| pim             | Penalties in minutes                                                                                                                                                                                                                                            |
| ps              | Point shares, estimate of points contributed by player                                                                                                                                                                                                          |
| ev              | Even strength goals                                                                                                                                                                                                                                             |
| ppg             | Power play goals                                                                                                                                                                                                                                                |
| shg             | Short handed goals                                                                                                                                                                                                                                              |
| gwg             | Game-winning goals                                                                                                                                                                                                                                              |
| eva             | Even strength assists                                                                                                                                                                                                                                           |
| ppa             | Power play assists                                                                                                                                                                                                                                              |
| sha             | Short handed assists                                                                                                                                                                                                                                            |
| sog             | Shots on goal                                                                                                                                                                                                                                                   |
| shotpct         | Shooting percentage                                                                                                                                                                                                                                             |
| toi             | Time on ice (in minutes)                                                                                                                                                                                                                                        |
| toiavg          | Average time on ice                                                                                                                                                                                                                                             |
| blocks          | Number of blocks                                                                                                                                                                                                                                                |
| hits            | Number of hits                                                                                                                                                                                                                                                  |
| fowin           | Faceoff wins                                                                                                                                                                                                                                                    |
| foloss          | Faceoff losses                                                                                                                                                                                                                                                  |
| fopct           | Faceoff win percentage                                                                                                                                                                                                                                          |
