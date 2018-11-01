
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

data_cleaned <- newfun(raw_data)


rownames(data_cleaned ) <- data_cleaned $stateName

# convert state names to lowercase

data_cleaned $stateName <- tolower(data_cleaned $stateName)
