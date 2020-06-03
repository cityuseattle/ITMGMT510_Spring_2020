library(class)

predicted.purchase = NULL
error.rate = NULL

for(i in 1:20){
    set.seed(101)
    predicted.purchase = knn(train.data, test.data,train.purchase,k=i)
    error.rate[i] = mean(test.purchase != predicted.purchase)
}
#print(error.rate)

library(ggplot2)
k.values = 1:20
error.df = data.frame(error.rate,k.values)

print(error.df)

print(ggplot(error.df),aes(x=k.values,y=error.rate)) + geom_point() + geom_line(lty="dotted",color='red')