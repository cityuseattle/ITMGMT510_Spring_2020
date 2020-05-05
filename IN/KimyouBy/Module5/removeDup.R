#remove the duplicate from the dataset
data <- read.csv(file="iris.csv", header=TRUE, sep=",")

print(data[!duplicated(data@variety), ])
