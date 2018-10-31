
clean <- function(sta){
#Removing First row and Last Row
#Also remove first four columns

sta <- sta[,-c(1:4)]
sta <- sta[c(-1,-53),]

# replacing the names of the columns in the dataframe.
colnames(sta)[c(1,2,3,4)] <- c("stateName", "population", "populationOver18", "percentOver18")
#returns the clean dataframe
  return(sta)
}

clean<- clean(raw_data)
str(clean)
