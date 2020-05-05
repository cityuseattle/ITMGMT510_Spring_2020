data <- read.csv(file="iris2.csv", header=TRUE, sep=",",encoding = "UTF-8");

res <- subset(data, variety=="Setosa")

print(res)