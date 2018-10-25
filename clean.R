
raw_data
rename=colnames(raw_data)

rename[1]=("statename")
rename[c(2,3,4)]=c("gdg","vgdjh","yfgdyu")
rename
colnames(raw_data)=rename
raw_data
which.max(raw_data$yfgdyu)
raw_data[53,]
popsort=raw_data[order(raw_data$yfgdyu),]
popsort
