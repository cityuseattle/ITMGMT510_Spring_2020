#Remove the duplicate from the dataset
data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

print(data[!duplicated(data$variety), ])