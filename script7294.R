
arrests <- USArrests
View(arrests)

states <- states[ , -1:-4]    # Removing first 4 columns
colnames(states) <- c("stateName", "population", "popOver18", "percentOver18") # Changing column names
View(states)

arrests$stateName <- rownames(arrests)
arrests$stateName

mergeDF <- merge(states, arrests, by = "stateName") #merging the dataframes
View(mergeDF)
str(mergeDF)
summary(mergeDF)
