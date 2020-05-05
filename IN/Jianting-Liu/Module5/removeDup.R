data <- read.csv(file="iris2.csv", header=TRUE, sep=",",encoding = "UTF-8");

print(data[!duplicated(data$variety),])