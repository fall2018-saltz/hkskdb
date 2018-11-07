
USArrests
arrests <- USArrests
View(arrests)



mergeDataframe <- merge(data1, arrests, by = "stateName") #merging the dataframes
View(mergeDataframe)
str(mergeDataframe)
summary(mergeDataframe)
