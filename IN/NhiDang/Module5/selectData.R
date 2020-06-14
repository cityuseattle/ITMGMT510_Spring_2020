data <- read.csv(file="iris2.csv", header=TRUE, sep=",")


res <- subset(data, variety=="Setosa")

#print(res)

#write filtered data into a new CVS file
write.csv(res,"result.csv")