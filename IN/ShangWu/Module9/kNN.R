library(ISLR)

print(str(Caravan))

print(summary(Caravan$Purchase))

print(any(is.na(Caravan)))

Purchase <- Caravan[,86]

print(var(Caravan[,1]))

print(var(Caravan[,2]))

test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- Purchase[test.index]

train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

library(class)

set.seed(101)
predicted.purchase <- knn(train.data, test.data, train.purchase, k=3)

print (head(predicted.purchase))

misclassification.error <- mean(test.purchase != predicted.purchase)

print(misclassification.error)

print(ggplot(error.df.aes(x=k.values, y=error.rate)) + geom_point() + geom_line(lty = "dotted", color = 'red'))