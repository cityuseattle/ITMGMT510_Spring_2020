data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

print(data[data$sepal.length > 7 , ])

