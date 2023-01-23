install.packages("tidyverse")
library(tidyverse)

rm(list = ls())
setwd("~/OneDrive - Western Sydney University/Master of Business analytics/Q1-23/COMP7024")

read.csv('student-mat.csv')
table<-read.csv('student-mat.csv')

## read the data.
d <- read.csv('student-mat.csv')
## create the linear mode of grade using age.
m <- lm(d$G3 ~ d$age)
## plot the grade vs age
plot(d$age, d$G3, xlab = "Age", ylab = "Grade")
## add the fitted line to the plot.
abline(m)
## show the summary of the linear model
summary(m)

#R as a scratch pad
#Use R to calculate:
23*43
42^3
