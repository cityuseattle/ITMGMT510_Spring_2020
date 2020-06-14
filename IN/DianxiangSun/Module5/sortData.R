#Sort the data ascending in petal width column

data <- read.csv(file="iris2.csv", header=TRUE, sep=",")

print(data[ order(data$petal.width, decreasing=TRUE), ])