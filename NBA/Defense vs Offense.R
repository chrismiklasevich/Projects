#NBA Defense vs Offense

#Set working directory
setwd("C:/Users/chrism/Desktop/Projects/NBA")


#install.packages('car')

library(XML);
library(RCurl);
library(dplyr)
library(car)

link = "https://www.basketball-reference.com/teams/MIL/1971.html#all_team_and_opponent"

page1 = getURL(link);
data1 = readHTMLTable(page1);













