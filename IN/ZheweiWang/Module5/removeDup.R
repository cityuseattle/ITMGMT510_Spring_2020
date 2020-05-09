data <- read.csv(file="iris2.csv", header=TRUE, sep = ",")
print(data[!duplicated(data$variety), ])