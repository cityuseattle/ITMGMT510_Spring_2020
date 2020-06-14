library(class)
library(ISLR)

print(str(Caravan))

print(summary(Caravan$Purchase))

print(any(is.na(Caravan)))

purchase = Caravan[,86]

standardized.Caravan = scale(Caravan[, -86])

print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))

test.index = 1:1000
test.data = standardized.Caravan[test.index]
test.purchase = purchase[test.index]

train.data = standardized.Caravan.Caravan[-test.index,]
test.purchase = purchase[test.index]

set.seed(101)

predicted = knn(train.data,test.data)

predicted = knn(train.data,test.data,train.data, k =3)
print(head(predicted))

misclassification.error = mean(test != purchase)
print(misclassification.error)