library(ISLR);

print(str(Caravan));

print(summary(Caravan$Purchase));

#Check if the data clean or not(no NA values);
print(any(is.na(Caravan)));

#Check out the variance of two features
print(var(Caravan[, 1]));

print(var(Caravan[, 2]));

#Save the purchase column in a separate variable
purchase <- Caravan[, 86];

#Standarize the dataset using scale() R function
standardized.Caravan <- scale(Caravan[, -86]);

#Check the variance one more time
print(var(standardized.Caravan[, 1]));
print(var(standardized.Caravan[, 2]));

#this is another way to split your data into test and training data
test.index <- 1 : 1000;
test.data <- standardized.Caravan[test.index, ];
test.purchase <- purchase[test.index];

#rest of data for training
train.data <- standardized.Caravan[-test.index, ];
train.purchase <- purchase[-test.index];


#knn function
library(class);

#set.seed(101);
#predicted.purchase <- knn(train.data, test.data, train.purchase, k = 1);
#print(head(predicted.purchase));

#misclassification.error <- mean(test.purchase != predicted.purchase);

#print(misclassification.error);

#set.seed(101);
#predicted.purchase <- knn(train.data, test.data, train.purchase, k = 5);
#print(head(predicted.purchase));

#evaluate the model by calculating the missclassification error rate
#misclassification.error <- mean(test.purchase != predicted.purchase);

#print(misclassification.error);
predicted.purchase = NULL;
error.rate = NULL;

for (i in 1 : 20){
    set.seed(101);
    predicted.purchase = knn(train.data, test.data, train.purchase, k = i);
    error.rate[i] = mean(test.purchase != predicted.purchase);
}

#print(error.rate);

library(ggplot2);
k.values <- 1 : 20;
error.df <- data.frame(error.rate, k.values);

print(error.df);

print(ggplot(error.df, aes(x = k.values, y = error.rate)) +
    geom_point() + geom_line(lty = "dotted", color = "red"));