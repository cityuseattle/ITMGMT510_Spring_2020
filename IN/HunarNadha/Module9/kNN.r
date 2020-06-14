library(ISLR)
library(class)
library(ggplot2)

#let's check the structure of the caravan dataset
print(str(Caravan))          #Run your code

#observations on 6000 customers and they have 86 features or variables. 
#Basically the dataset is just a bunch of customers data measured across
#eighty five predictors of the demographic with the final one (line) shows 
#whether or not they purchased insurance policy from thi care event
print(summary(Caravan$Purchase))

#Check if the data clean or not (no NA values)
print(any(is.na(Caravan)))
print(var(Caravan[,1]))
print(var(Caravan[,2]))

#save the purchase column in a separate variable
purchase <- Caravan[,86]

#Standarize the dataset using "scale()" R function
standardized.Caravan <- scale(Caravan[,-86])

#Check the variance one more time
print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

#This is another way to split your data into test and training data
#First 1000 rows for test set   
test.index <- 1:1000
test.data <-standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#Rest of data for training
train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

set.seed(101)
#predicted.purchase <- knn(train.data,test.data,train.purchase,k=1)
predicted.purchase <- knn(train.data,test.data,train.purchase,k=5)
print(head(predicted.purchase))

#evaluate the model by calculating the missclassification error rate
#it will be the avrg of my test purchase "actual points" which is whether 
#it's equal to the predicted col or not
misclassification.error <- mean(test.purchase != predicted.purchase)
print(misclassification.error)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20) {
    set.seed(101)
    predicted.purchase = knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}
print(error.rate)

k.values <- 1:20
error.df <- data.frame(error.rate,k.values)

print(error.df)

print(ggplot(error.df,aes(x=k.values,y=error.rate)) + geom_point() + geom_line(lty="dotted",color='red'))