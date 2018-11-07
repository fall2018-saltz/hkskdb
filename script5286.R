
USArrests
arres <- USArrests


mergeDF <- merge(data1, arres, by = "stateName") #merging the dataframes

str(mergeDF)
summary(mergeDF)
