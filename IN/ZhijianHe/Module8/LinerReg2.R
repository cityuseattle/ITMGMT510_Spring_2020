library(caTools)
library(ggplot2)

# Read CSV, note the delimiter (sep)
df <- read.csv('student-mat.csv',header=TRUE, sep=';')

#Set a random see so your "random" results are the sames as this HOP
set.seed(101)

#Split up the sample, basically randomly assigns a booleans to a new column "sample"
sample <- sample.split(df$G3, SplitRatio = 0.70) # SplitRatio = percent of sample==TRUE

# Training Data, 70% will be training data
train = subset(df, sample == TRUE)

# Testing Data, 30%will be test data
test = subset(df, sample == FALSE)

#Train & Build Model
model <- lm(G3 ~ .,train)

print(summary(model))

# Grab residuals
res <- residuals(model)

# Convert to DataFrame for gglpot
res <- as.data.frame(res)

# print first 6 rows of the res column
print(head(res))

# Histogram of residuals
#print(ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha=0.5))

#plot(model)

G3.predictions <- predict(model,test)

#Create a dataframe with the two columns the prediction data and the 
#actual data
results <- cbind(G3.predictions,test$G3)

#Name the two columns pred(prediction), real (actual data)
colnames(results) <-c('pred','real')
results <- as.data.frame(results)

print(head(results))

#Function to check if the number is < 0, then make it zero
to_zero <- function(x) {
    if (x < 0){
        return(0)
    }else{
        return(x)
    }
}

#Apply the to_zero function on the prediction columns
#which mean if any value in the column is less than zero,
#then any negative prediction will get pushed up to zero
#we are doing that because the actual score is zero and no one
#has a negative score in real life
result$pred <- sapply(results$pred,to_zero)

#To make sure that the min value of your predicted col is zero
print(min(results))

#the R-Squared Value for our model (just for the predictions)
SSE <- sum((result$pred - results$real)^2)
SST <- sum( (mean(df$G3) - results$real)^2)

R2 <- 1 - SSE/SST
print(R2)
