data <- read.csv(file = "iris2.csv", header =TRUE, sep = ",")
 #print (data)

res <-subset(data, variety == "Setosa")

write.csv(res, "result.csv")