data <- read.csv(file="iris2.csv", header=TRUE, sep=",",encoding = "UTF-8");

print(data[data$petal.length > 6,])

print(data[data$petal.length > 4.5 & data$sepal.width < 5,])