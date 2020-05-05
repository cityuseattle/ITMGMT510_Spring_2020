data <- read.csv(file="iris.csv", header=TRUE, sep=",")

print(data[data$sepal.length > 7, ])

print(data[data$sepal.length > 4.5 & data$sepal.length < 5, ])