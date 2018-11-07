
USArrests
arrests <- USArrests
View(arrests)



mergeDataframe <- merge(data1, arrests, by = "stateName") #merging the dataframes
View(mergeDF)
str(mergeDF)
summary(mergeDF)
