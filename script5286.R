
#take the USArrests data set into arrests variable 
arrests <- USArrests

stateName <- as.vector(rownames(arrests))
stateName <- tolower(stateName)

arrests <- cbind(arrests,stateName,stringsAsFactors=FALSE)

#arrests doesn't contain a proper column name for state names but has state names as index
#so create a column to store the state names suing rownames


#now that we have to merge two dataframes using a common element 
#the column element is stateName
mergeDF=merge(data1 ,arrests,by="stateName")
mergedDF
