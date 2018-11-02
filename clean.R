
# creating a function


Func <- function(raw_data)
{


#copying raw data into state variable
state<-raw_data

#remove row 53 
state <- state[-53,]


# removing 1st row
state <- state[-1,]

# removing first four columns
state <- state[,-c(1,2,3,4)]

# renaming the columns
colnames(state)=c("stateName","population","popOver18","percentOver18")


return(state)
}

data1 <- Func(raw_data)

rownames(data1)=data1$stateName

data1$stateName=tolower(data1$stateName)

data1
