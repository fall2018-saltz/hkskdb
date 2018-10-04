
#Part A: Write a function to reveal the distribution of a vector of numeric values
#function to print mean, median,min,max std.dev and quartile
printVecInfo<-function(a)
{  cat("The mean is ", mean(a), "\n")
  cat("The median is ",median(a), "\n")
  cat("The max value is ", max(a), "\n")
  cat("The min value is ",min(a), "\n")
  cat("The standard deviation is ", sd(a) , "\n")
  cat(".05 quantile and .95 quantile are ", quantile(a,c(0.01,0.95)), "\n")}
testVector<-1:10
printVecInfo(testVector)

#Part B: Read the census dataset
#reading and cleaning of the data
dfStates<-read.csv("https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv",stringsAsFactors=FALSE,header = TRUE)
dfStates<-dfStates[-c(53,1),]
colnames(dfStates)[5:8]<-c("stateName", "population", "popOver18", "percentageOver18")
dfStates<-dfStates[,-(1:4)]
#Part C: Sample from the state population data frame
#sampling, and viewing histograms 3 times
sample1<-sample(dfStates$population,size=20,replace=TRUE)
printVecInfo(sample1)
hist(sample1)
sample2<-sample(dfStates$population,size=20,replace=TRUE)
printVecInfo(sample2)
hist(sample2)
sample3<-sample(dfStates$population,size=20,replace=TRUE)
printVecInfo(sample3)
hist(sample3)
# We get a different histogram for each sample because the sample chosen from population is different each time. so the distribution in the form of histogram  changes
#Part D: Replicate the sampling
#replicating sample of 20, 2000 times to view the histogram and descriptive statistics
sample4<-replicate(2000,sample(dfStates$population,size=20,replace=TRUE))
printVecInfo(sample4)
hist(sample4)
sample4<-replicate(2000,sample(dfStates$population,size=20,replace=TRUE))
printVecInfo(sample4)
hist(sample4)
sample4<-replicate(2000,sample(dfStates$population,size=20,replace=TRUE))
printVecInfo(sample4)
hist(sample4)
#we get a different histogram from C step  because the sample size that we are taking is increasing(due to replication of the sample) and we get answer close to population thus following the law of large numbers.

