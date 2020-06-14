library(ISLR)

#let's check the structure of the caravan dataset
print(str(Caravan))

#After running the code, You will find this current dataest is about 6000
#observations on 6000 customers and they have 86 features or variables
#Basically the dataest is just a bunch of customers data measured across
#eighty five predictors of the demographic with the fical one (line) shows
#whether or not they purchased insurance policy from this care event

#Let's check the summary of purchase coloumn to see
#how many bought the insurance and how many didn't
print(summary(Caravan$Purchase))

#Check if the data clean or not (no NA values)
print(any(is.na(Caravan)))


#Save the Purchase column in a separate variable
purchase <- Caravan[,86]

#Standarize the dataset using "scale()" R function
standarized.Caravan <- scale(Caravan[,-86])

#Check the variance one more time
print(var(standarized.Caravan[,1]))

print(var(standarized.Caravan[,2]))

#This is another way to split your data into test and training data
#First 1000 rows for test set
test.index <- 1:1000
test.data <- standarized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#Rest of data for training
train.data <- standarized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]


#The class library contain the kun function
library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20)
{
    set.seed(101)
    predicted.purchase = knn(train.data, test.data, train.purchase, k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}

#We will create a data frame that has 2 colums one for the error rate
#and the other for the value of k then
#we will plot this on a graph
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate, k.values)

print(error.df)

print(ggplot(error.df, aes(x = k.values, y = error.rate)) + geom_point() + geom_line(lty = "dotted", color = 'red'))

#set.seed(101)
#predicted.purchase <- knn(train.data, test.data, train.purchase, k=5)
#print(head(predicted.purchase))

#Evaluate the model by calculating the missclassification error rate
#it will be the avrg of my test purchase "actual points" which is whather
#it's equal to the pridicted col or not
#missclassification.error <- mean(test.purchase != predicted.purchase)

#print(missclassification.error)

