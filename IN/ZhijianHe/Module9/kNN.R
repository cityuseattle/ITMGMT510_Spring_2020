library(ISLR)

#Let's check the structure of the caravan dataset
print(str(Caravan))#Run your code

#Let's check the summary of purchase coloumn to see
#how many bought the insurance and how many didn't
print(summary(Caravan$Purchase))#Run your code

#Check if the data clean or not (no NA values)
print(any(is.na(Caravan)))

#Save the Purchase column in a separate variable
purchase <- Caravan[,86]

#Standarize the dataset using "scale()" R function
standardized.Caravan <- scale(Caravan[,-86])

#Check the variance one more time
print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

#This is another way to split your data into test and training data
# First 1000 rows for test set
test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#Rest of data for training
train.data <- standardized.Caravan [-test.index,]
train.purchase <- purchase[-test.index]

###########
###########
# KNN MODEL
###########
#The class library contain the knn function
library(class)

predicted.purchase = NULL
error.rate = NULL
for(i in 1:20){
    set.seed(101)
    predicted.purchase <- knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}
#print(error.rate)

library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate,k.values)

print(error.df)

print(ggplot(error.df,aes(x=k.values,y=error.rate)) + geom_point()+ geom_line(lty="dotted",color='red'))