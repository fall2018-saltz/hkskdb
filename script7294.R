
#copying usarests into variable called data2
data2<-USArrests


stateName <- as.vector(rownames(data2))

stateName <- tolower(stateName)

arrests <- cbind(data2,stateName,stringsAsFactors=FALSE)

#meging both data1 and data2 dataframes

mergedData=merge(data1,data2,by="stateName")
mergedData

#2)	Add the area of each state, and the center of each state, to the merged dataframe,
#using the ‘state.center’, ‘state.center’ and ‘state.name’ vectors
 
 
stX <- state.center$x
stY <- state.center$y
mergedData <- cbind(mergedData,state.area)
mergedData <- cbind(mergedData,stX )
mergedData <- cbind(mergedData,stY)
