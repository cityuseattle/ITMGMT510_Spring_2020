data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

res <- subset(data, variety=="Setosa")

print(res)

#print(res)

#write filtered data into a new CSV file
write.csv(res, "result.csv")
