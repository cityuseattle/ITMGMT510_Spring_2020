library(caTools);
library(ggplot2);

#read csv, note the delimiter
df <- read.csv('student-mat.csv', header = TRUE, sep = ';');

#set a random see so your random results are the same as the HOP
set.seed(101);

#split up the sample, basically randomly assigns a booleans to a new column sample
sample <- sample.split(df$G3, SplitRatio = 0.70);

#Training data
train = subset(df, sample == TRUE);

#Testing data, 
test = subset(df, sample == FALSE);

#Train & Build model
model <- lm(G3 ~.,train);

print(summary(model));


#Grab residuals
res <- residuals(model);

#convert to dataframe for ggplot
res <- as.data.frame(res);

#print first 6 rows of the res column
print(head(res));

#histogram of residuals
#print(ggplot(res.aes(res)) + geom_histogram(fill =  'blue', alpha = 0.5));

#plot(model);

#Prediction of G3
G3.predictions <- predict(model, test);

#Create a dataframe with the two columns the prediction data and the actual data
results <- cbind(G3.predictions, test$G3);

#Nam the two columns pred, real
colnames(results) <- c('pred', 'real');
results <- as.data.frame(results);

print(head(results));

#Function to check if the number is < 0, then make it zero
to_zero <- function(x){
    if (x < 0){
        return(0);
    } else{
        return(x);
    }
}

results$pred <- sapply(results$pred, to_zero);

print(min(results));

#evaluate our prediction values
mse <- mean((results$real-results$pred) ^ 2);

print('MSE');
print(mse);