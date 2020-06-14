data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

print(data[ order(data$petal.width, decreasing=TRUE), ])