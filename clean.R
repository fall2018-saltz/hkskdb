
raw_data
rename=colnames(raw_data)
rename[1]=("statename")
rename[c(2,3,4)]=c("gdg","vgdjh","yfgdyu")
rename

cleandata=function(dataframe){
    
    
    name=colnames(df)
    name[c(1,2,3,4)]=c("reddy","srinivas","pachika","syracuse")
    df=name
    return(df)
    
}
raw_data
dfstates=cleandata(raw_data)
dfstates
