
# cleaning data
newfun<- function(states){

  # removes the first row and the last row
  # and the first four columns SUMLEV	REGION	DIVISION	STATE

  dfSt <- states[,c(-1,-2,-3,-4)]
  dfSt <- dfSt[c(-1,-10,-53),] 

  # renaming the remaining columns
  #using colnames function we are renaming columns 
  colnames(dfStates)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")

  #returns the clean dataframe
  return(dfStates)
}

clean_data <- func1(raw_data)

# saves the state names as row names
rownames(clean_data) <- clean_data$stateName

# convert state names to lowercase

clean_data$stateName <- tolower(clean_data$stateName)
