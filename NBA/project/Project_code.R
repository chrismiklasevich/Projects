
#PROJECT DATASET CLEANING
setwd("C:/Users/chrism/Desktop/Stat 417/project")

#Reading in the datasets to be cleaned and combined
players = read.csv("C:/Users/chrism/Desktop/Stat 417/project/player_data.csv",header=TRUE,fill=TRUE)

stat = read.csv("C:/Users/chrism/Desktop/Stat 417/project/Seasons_Stats.csv",header=TRUE,fill=TRUE)



#Getting our subsets of the original dataset
stat2007 = subset(stat,stat$Year>2006)
typeof(stat2007)

players2007 = data.frame(subset(players,players$year_start >2006))



#Adding a censored variable to display right censored data ( still playing in the NBA)

players2007$Censor= 0

players2007$Censor[players2007$year_end==2018] =1

#Sort by name and remove unwanted variables
stat2007 = stat2007[order(stat2007$Player),]
stat2007 = subset(stat2007,select=c(1,2,3,7,8,48,49,50,51,52,53))


#Calculate the mean for the players in our subset of the data

temp = filter(stat2007,stat2007$Player =="A.J. Hammons" )


#Checking
unique(stat2007$Player)
library(dplyr)

for (i in unique(stat2007$Player))
  {
  #temp = subset(stat2007)
  temp = filter(stat2007,stat2007$Player ==i )
  #sumtem = tapply(temp$PTS,  FUN=sum)
  #sumtem = aggregate(temp,by=list(temp$PTS,temp$PF,temp$TOV,temp$BLK,temp$STL,temp$AST,temp$GS,temp$G), FUN=sum)
  }





class(temp)











