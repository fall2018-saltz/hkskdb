
#copying USArrests into a local variable
arrestsinus<- USArrests

#creating a column name for rows having states 
rownames(clean) <- as.vector(clean[,"stateName"])

#merging 2 dataframes
mergeData <- merge(clean, arrestsinus, by = "row.names")
mergeData

