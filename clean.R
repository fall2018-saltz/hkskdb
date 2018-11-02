
# creating a function
Func=function(raw_data)
{
#pass the csv data into the dfStates variable
dfStates=raw_data

#remove row 53 to remove the last row using the minus symbol
dfStates=dfStates[-53,]
#to make only 51 rows available we need to remove one more row and according to the question,
#remove the 1st row as it is not a state and according to the condition we should have the rows as one per state and the district of Columbia
dfStates=dfStates[-1,]

#there should be only 4 columns now
#hence, remove the columns other than the required ones
dfStates=dfStates[,-c(1,2,3,4)]

#now we need to change the names of the columns

#first view the original names of the columns
colnames(dfStates)

#to change the names to new names asked in the question
colnames(dfStates)=c("stateName","population","popOver18","percentOver18")


return(dfStates)
}

cleandata=cenFun(raw_data)

rownames(cleandata)=cleandata$stateName
cleandata$stateName=tolower(cleandata$stateName)
cleandata
