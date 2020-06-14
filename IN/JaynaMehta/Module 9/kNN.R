library(ISLR)

#let's check the structure of the caravan dataset
print(str(Caravan))

print(summary(Caravan$Purchase))

#Check if the data clean or not 
print(any(is.na(Caravan)))

# save the purchase column in a separate variable
purchase <- Caravan[,86]

#Standarize the dataset using "scale()" R function
standardized.Caravan <- scale(Caravan[,-86])

# check the variance one more time
print(var(standardized.Caravan[,1]))
 
print(var(standardized.Caravan[,2]))

# this is another way to slit your data into test and training data
#First 1000 rows for test set
test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[-test.index]

# rest of data for training
train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}  

#print(error.rate)
#print(head(predicted.purchase))

library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate,k.values)

print(error.df)




misclassification.error <- mean(test.purchase != predicted.purchase)

print(misclassification.error)

print(ggplot(error.df,aes(x=k.values,y=error.rate)) + geom_point()+ geom_line(lty="dotted",color='red'))


