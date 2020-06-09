library(ISLR)

print(str(Caravan))

print(summary(Caravan$Purchase))

print(any(is.na(Caravan)))

purchase <- Caravan[,86]

standardized.Caravan <- scale(Caravan[,-86])

print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]


library(class)

set.seed(101)
predicted.purchase <- knn(train.data,test.data,train.purchase,k=5)

print(head(predicted.purchase))


misclassification.error <- mean(test.purchase != predicted.purchase)
print(misclassification.error)


library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}


library(ggplot2)

k.values <- 1:20
error.df <- data.frame(error.rate,k.values)

print(error.df)

print(ggplot(error.df,aes(x=k.values,y=error.rate)) + geom_point()+ geom_line(lty="dotted",color='red'))