data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

res <- subset(data, variety=="Setosa")

#print(res)

#write filtered data into new csv file

write.csv(res, "result.csv")