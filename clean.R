
#clean_data <- as.data.frame(raw_data)
#names(clean_data)
func1 <- function(states){

  # removes the first row and the last row, with state = USA and state = Puerto rico commonwealth 
  # and the first four columns SUMLEV	REGION	DIVISION	STATE

  dfStates <- states[,c(-1,-2,-3,-4)]
  dfStates <- dfStates[c(-1,-10,-53),] 

  # renaming the remaining columns
  # the colnames function is used to rename columns and the rownames function is used for rows

  colnames(dfStates)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")

  #returns the clean dataframe
  return(dfStates)
}

clean_data <- func1(raw_data)

# saves the state names as row names
rownames(clean_data) <- clean_data$stateName

# convert state names to lowercase

clean_data$stateName <- tolower(clean_data$stateName)
