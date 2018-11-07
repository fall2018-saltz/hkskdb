
USArrests
arrests <- USArrests
View(arrests)



mergeDF <- merge(states, arrests, by = "stateName") #merging the dataframes
View(mergeDF)
str(mergeDF)
summary(mergeDF)
