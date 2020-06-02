#install.packages('ISLR',repos = 'http://cran.us.r-project.org')

library(ISLR)

#let's check the strucutre of the caravan dataset
print(str(Caravan)) #Run your code

#Check the summary of purchase column to see
#how many bought the insurance and how many didn't
print(summary(Caravan$Purchase))

#Check if the data is clean or not
print(any(is.na(Caravan)))

#Save the Purchase column in a separate variable
purchase <- Caravan[,86]

#Standardize the dataset using "scale()" R function
standardized.Caravan <- scale(Caravan[,-86])

print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

#This is another way to split your data into test and training data
#First 1000 rows for test set
test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#Rest of the data for training
train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

library(class)

set.seed(101)
predicted.purchase <- knn(train.data,test.data,train.purchase,k=5)
print(head(predicted.purchase))

#evaluate the model by calculating the misclassification error rate
#it will be the average of my test purchase "actual points" which is whether
#it's equal to the predicted col or not
misclassification.error <- mean(test.purchase != predicted.purchase)

print(misclassification.error)

#the class library contain the knn function
library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)   
}
#print(error.rate)

#Create a data frame that has 2 col for the error rate
#and the other for the value of k then
#we will plot this on a graph
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate,k.values)

print(ggplot(error.df,aes(x=k.values,y=error.rate))+ geom_point()+ geom_line(lty="dotted",color='red'))