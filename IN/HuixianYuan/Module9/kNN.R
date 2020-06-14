library(ISLR)

#let's check the structure of the caravan dataset
print(str(Caravan)) 

#let's check the summary of purchase column to see
#how many bought the insurance and how many didn't
print(summary(Caravan$Purchase))

#check if the data clean or not (no/NA values)
print(any(is.na(Caravan)))

#save the Purchase column in a seprate variable
purchase<-Caravan[,86]

#standarize the dataset using "scale()" R function
standardized.Caravan<-scale(Caravan[,-86])

#check the variance one more time
print(var(standardized.Caravan[,1]))
print(var(standardized.Caravan[,2]))

#this is another way to split your data into test and training data
#first 1000 rows for test set
test.index<-1:1000
test.data<-standardized.Caravan[test.index,]
test.purchase<-purchase[test.index]

#rest of data for training
train.data<-standardized.Caravan[-test.index,]
train.purchase<-purchase[-test.index]

###########
###########
# KNN MODEL
###########
#the class library contain the knn function

library(class)

predicted.purchase=NULL
error.rate=NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase=knn(train.data,test.data,train.purchase,k=i)
    error.rate[i]=mean(test.purchase !=predicted.purchase)
}
#print(error.rate)

library(ggplot2)
k.values<-1:20
error.df<-data.frame(error.rate,k.values)

print(error.df)
print(ggplot(error.df,aes(x=k.values,y=error.rate))+geom_point()+ geom_line(lty='dotted',color='red'))



misclassification.error<-mean(test.purchase != predicted.purchase)

print(misclassification.error)

set.seed(101)
predicted.purchase<-knn(train.data,test.data,train.purchase,k=3)
print(head(predicted.purchase))

misclassification.error<-mean(test.purchase!=predicted.purchase)

print(misclassification.error)

set.seed(101)
predicted.purchase<-knn(train.data,test.data,train.purchase,k=5)
print(head(predicted.purchase))

misclassification.error<-mean(test.purchase!=predicted.purchase)

print(misclassification.error)
