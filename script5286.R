
#passing USArrests into arrests variable

arrests <- USArrests

stateName <- as.vector(rownames(arrests))

stateName <- tolower(stateName)

arrests <- cbind(arrests,stateName,stringsAsFactors=FALSE)



# creating  a column to store state names and meging two data frames "data1" and "arrests"

mergeDF=merge(data1 ,arrests,by="stateName")

mergeDF

