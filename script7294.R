
#copying usarests into variable called data2
data2<-USArrests

stateName=as.vector(rownames(arrests))
stateName=tolower(stateName)

arrests=cbind(arrests,stateName,stringsAsFactors=FALSE)

#arrests doesn't contain a proper column name for state names but has state names as index
#so create a column to store the state names suing rownames


#now that we have to merge two dataframes using a common element 
#the column element is stateName
mergedData=merge(cleandata,arrests,by="stateName")
mergedData

#2)	Add the area of each state, and the center of each state, to the mergeddataframe,
#using the ‘state.center’, ‘state.center’ and ‘state.name’ vectors

stCenterX <- state.center$x
stCenterY <- state.center$y
mergedData <- cbind(mergedData,state.area)
mergedData <- cbind(mergedData,stCenterX)
mergedData <- cbind(mergedData,stCenterY)
