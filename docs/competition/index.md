---
permalink: /competition/
---

This event caters to the Kenyon College student community. If you are a student at Kenyon College, you are eligible to form a team and submit as part of this competition, regardless of sports analytics, computer science, or statistics experience.

## Eligibility

In order to be eligible, you must:
- Be a current student at Kenyon College

## Entry

To enter in the contest, click [here](https://docs.google.com/forms/d/e/1FAIpQLSdkkYVjz9Lc_w2Pl6te_bWjBFrBXMZol7ND2G0byMOmA1FE6Q/viewform?usp=sf_link) to submit your team information and to get a team ID. You will receive a team ID regardless of the size of your team or if you are competing independently. You must request your team ID by 12:00 PM EST on March 21, 2022.

There is no entry fee.

## Format

- Teams can be as small as one person and as large as four people.
- Participants will be given data in `.csv` (plaintext comma-separated values), `.pki` (Python Pandas Pickle), and `.rds` (R dataset) form. All forms are identical.
- Allowed platforms for coding are R (using RStudio) or Python (in a Jupyter Notebook, including Google Colab).
- The competition will be hosted asynchronously, and your final submission should be provided as a single annotated file uploaded to the specified submission link. We recommend using R Markdown for R developers (might we suggest submitting an Rmd file) or using Jupyter Notebooks for Python developers (might we suggest submitting an IPYNB file). Click [here](https://docs.google.com/forms/d/e/1FAIpQLSduM6TRbxYDQOGe29LVBHCYPcOlIgpSx_gZ7ph4lX_DO0F2bQ/viewform?usp=sf_link) to make your final submission.
- All submissions must be made by 12:00 PM EST on March 22, 2022.
- Participants are expected to do exploratory data analysis on the data, but beyond this, there are no expectations to the depth or breadth of analysis. We'd love to see all sorts of analyses! For example:
  - Wilcoxon/Mann-Whitney rank sum test or T-test for differences in means/medians for goals scored by conference/position/division
  - Z-test for differences in proportions for high/low scorers by role
  - ANOVA/Kruskal-Wallis in points between teams, ice time between teams
  - General linear regression that a player gets *X* ice time given number of goals (maybe do a multiple linear regression?)
  - Anything else you can think of!
- Plagiarism of any form will lead to immediate disqualification.

## What should I include?

- Your team ID (do *not* include your names or email addresses!)
- Any exploratory data analysis code that you ran
- Any analysis code that you ran, including:
  - Hypotheses
  - Conditions checks for tests
  - The tests or analyses themselves
- Any code that you ran to get plots
- A conclusion

We ***highly*** recommend that you clear your environment and run your code all the way through before submitting. This will help you avoid calling undefined objects, which is the source of most errors. Code, notebooks, or files that do not execute or render properly will be disqualified.

You can use any packages that are available on CRAN (Comprehensive R Archive Network) or which can be delivered by PyPI (using `pip`) or Anaconda (using `conda`). Judges will not install any packages from GitHub, GitLab, or any library repository other than CRAN, PyPI, or Anaconda. You do not need to include `install_packages()` statements in R or `pip install <package>` statements in Python. Judges will install all applicable packages, assuming that they are being loaded into your script by means of a `library()` statement in R or `import` statement in Python.

You may not submit any pre-compiled or binary executable files, such as `.pyc` or `.exe` files, for security reasons. Your submission must be made in source code form. If compilation is required, it will be performed on the judge's machine. If you choose to submit a R Markdown file, please submit your `Rmd` file, instead of a compiled PDF or HTML file. It will be compiled on the judge's machine. Your file output must be a PDF or HTML file. If it is neither, it will be changed to PDF. If your file does not knit properly when compiled as a PDF, it will be changed to HTML. If it still does not knit properly, your submission will be disqualified. If you choose to submit a Jupyter Notebook, it will be run in untrusted mode (again, for security reasons). This means that you should use the `requests` or `pandas` library to get the data using the CSV, rather than reading the file from your local filesystem.

Confused? We're happy to answer any questions that you might have!

As a resource, the competition organizers have provided you with a [R](https://github.com/kim3-sudo/nhlskaters/blob/main/challenge/sample.R) and a [R Markdown](https://github.com/kim3-sudo/nhlskaters/blob/main/challenge/sample.Rmd) sample file to demonstrate how we expect you to annotate your code and what you should include. You are free to run/knit these files.

## Prize

After the competition period is over, anyone on a team who made a submission will receive a $5 Wiggin Street Coffee gift card. In order to be eligible, you must have been on a team with a valid team ID as a listed member.

Additionally, according to a rank by rubric points, each member of the first place team will receive an additional $20 Wiggin Street Coffee gift card. Each member of the second place team will receive an additional $15 Wiggin Street Coffee gift card. Each member of the third place team will receive an additional $10 Wiggin Street Coffee gift card.

## Support

If you have questions about an analysis (or with R/Python/RStudio), please send an email to S Kim, J Katz, or B Hartlaub (or better yet, ask in #programming in Discord!). If you have an entry or submission issue, please send an email to S Kim. If you have a question about the data itself (like the form, encoding, or need help with a variable description), please send an email to S Kim and J Katz.

