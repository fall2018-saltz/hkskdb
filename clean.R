
raw_data
dfstates<-raw_data
dfstates
dfstates=dfstates[-53,]
dfstates
dfstates=dfstates[1:51,]
dfstates
dfstates=dfstates[,5:8]
dfstates
rename=colnames(dfstates)
rename
dfstates=raw_data
dfstates
#2.	Use View( ), head( ), and tail( ) to examine the data frame. 
View(dfStates)
head(dfStates)
tail(dfStates)

#3.	Remove unneeded columns and rows by using the minus sign in the rows or columns of the [ , ] accessor. 
#4.	Remove the last Row (for Puerto Rico)
dfStates->dfStates[-53,]

#5.	Make sure there are exactly 51 rows (one per state + the district of Columbia).  
#Hint: remove Puerto Rico and the summary for the united states

dfStates->dfStates[-1,]

#6.	Make sure there are precisely 4 columns, with the following names:
#stateName, population, popOver18, percentOver18. 
#Hint: use colnames( ) and you will need to remove some columns

dfStates->dfStates[,-c(1,2,3,4)]
colnames(dfStates)->c("stateName","population","popOver18","percentOver18")

df1->dfStates

#7.	Create a function that takes no parameters and returns the clean dataframe created in step 6 above.
sampleFun->function(){
  
  return(df1)
}

sampleFun()

#8.	Calculate the average population of the states
mean(dfStates$population)
#	Find the state with the highest population  (use which.max)
which.max(dfStates$population)
dfStates[5,]
#10.	Create a histogram of the state populations, what do you observe?
hist(dfStates$population)
#11.	Sort the data frame by population (hint the use 'order' function)
Df->dfStates[order(dfStates$population),]
#	Show the 10 states with the lowest populations
Df->dfStates[order(dfStates$population),]
head(sortDf,10)
h the lowest populations
#Use barplot( ) to create a plot of each of the population from the sorted dataframe.  What do you observe?
barplot(sortDf$population)

