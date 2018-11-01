
#1)	Read in the census dataset and the USArrests and merge them 
# cleaning data
newfun<- function(states){

  # removes the first row and the last row
  # and the first four columns SUMLEV	REGION	DIVISION	STATE

  dfSt <- states[,c(-1,-2,-3,-4)]
  dfSt <- dfSt[c(-1,-10,-53),] 

  # renaming the remaining columns
  #using colnames function we are renaming columns 
  # we are using row names function to rename rows
  colnames(dfSt)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")

  #returns the clean dataframe
  return(dfSt)
}

dataset1 <- newfun(raw_data)


rownames(dataset1 ) <- dataset1 $stateName

# reading second data set of USArrest
library("ggplot2")
library("ggmap")
dataset2 <- USArrests


# save row names as a separate variable
stateName<- as.vector(rownames(USArrests))

# adding statename column to the data frame

dataset2 <- cbind(dataset2,stateName, stringsAsFactors=FALSE)

# now merge two data frames

mergeddata <- merge(dataset1,dataset2,by="stateName")

#clean mergeddata
statecenterx <- state.center$x
statecentery <- state.center$y
mergeddata <- cbind(mergeddata,state.area)
mergeddata <- cbind(mergeddata,statecenterx)
mergeddata <- cbind(mergeddata,statecentery)

str(mergeddata)
