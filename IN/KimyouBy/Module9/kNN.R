library(ISLR)

#let's check the structure of the caravan dataset
print(str(Caravan))

#let's check th summary of purchase column to see how many bought insurance and how many didn't
print(summary(Caravan$Purchase))

#check if the data clean or not (no NA values)
print(any(is.na(Caravan)))

print(var(Caravan[,1]))

print(var(Caravan[,2]))

#save the purchase column in a seperate variable
purchase <- Caravan[, 86]

#standarize the dataset using "scale()" R function
standardized.Caravan <- scale(Caravan[, -86])

#check the variance one more time
print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

#this is another way to split your data into test and training data
#first 1000 rows for test set
test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#rest of data for training
train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

############
# KNN Model
###########
#this class library contain the knn function
library(class)

set.seed(101)
predicted.purchase <- knn(train.data, test.data, train.purchase, k=1)
predicted.purchase <- knn(train.data, test.data, train.purchase, k=3)
predicted.purchase <- knn(train.data, test.data, train.purchase, k=5)
print(head(predicted.purchase))

#evaluate the model by calculating the missclassification error trate
missclassification.error <- mean(test.purchase != predicted.purchase)

print(missclassification.error)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data, test.data, train.purchase, k=1)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}
print(error.rate)

# we will create a data frame that has 2 columns; one for the error rate
# and the other for the value of k then
# we will plot this on a graph
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate, k.values)

print(error.df)

print(ggplot(error.df, aes(x=k.values, y=error.rate))+ geom_point()+geom_line(lty="dotted", color='red'))