library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data, test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}
print(error.rate)