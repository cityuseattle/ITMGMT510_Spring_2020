library(caTools)

# Read CSV, note the delimiter (sep)
df <- read.csv('student-mat.csv', header=TRUE, sep=';')

#Set a random see so your "random" results are the same as this HOP
set.seed(101)

#Split up the sample
sample <- sample.split(df$G3, SplitRatio = 0.70)

#Training Data, 70% will be training data
train = subset(df, sample==TRUE)

#Testing Data, 30% will be test data
test = subset(df, sample==FALSE)

#Train & Build model
model <- lm(G3 ~ ., train)

print(summary(model))

#Grab residuals
res <- residuals(model)

#Convert to Dataframe for ggplot
res <- as.data.frame(res)

#Print first 6 rows of the res column
print(head(res))

#Histogram of residuals
#print(ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha=0.5))

#plot(model)

#We are going to make a variable G3.prediction and we want to use the
#predict function from stats. In order to do this to use to predict funciton,
#we should pass our model as first arg and our test data as second arg
#if you are wondering how the predict func knows which value to predictu?
#This info in your model <- lm(G3 ~ ., train)

#Your model knows the formula and knows you are trying to predict G3 based
#off all the features of your training dataset
#So it means your predict funtion needs the model that's already been trained
#and your test set should look same as your trainingset

G3.predictions <- predict(model,test)

#Create a dataframe with the two columns 
results <- cbind(G3.predictions,test$G3)

#Name the two columns pred(prediction), real(actual data)
colnames(results) <- c('pred','real')
results <- as.data.frame(results)

print(head(results))

#Function to check if the number is < 0

to_zero <- function(x){
        if (x < 0){
            return(0)
        }else{
            return(x)
        }
}

#apply the to_zero function on the predictuion columns
#Which mean if any value in the column is less than zero,
#then any negative prediction will get pushed up to zero

results$pred <- sapply(results$pred,to_zero)

#To make sure that the min value of your predicted col is zero
print(min(results))

mse <- mean((results$real-results$pred)^2)

print('MSE')
print(mse)

#the R-squared value for our model(just for the predictions)
SSE <- sum((results$pred - results$real)^2)
SST <- sum( (mean(df$G3) - results$real)^2)

R2 <- 1 - SSE/SST
print(R2)