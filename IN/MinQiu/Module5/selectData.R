data <- read.csv(file="iris2.csv",header=TRUE,sep=",")

res <- subset(data,variety=="Setosa")

write.csv(res,"result.csv")