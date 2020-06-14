library(caTools)
library(ggplot2)

# read CSV, note the delimiter (sep)
df <- read.csv('student-mat.csv',header=TRUE, sep=';')

# set a random see so your "random" results are the same as this HOP
set.seed(101)

# Split up the sample, basically randomly assigns a booleans to a new column "sample"
sample <- sample.split(df$G3,SplitRatio = 0.70) # SplitRatio = percent of sample ==TRUE

#Training data, 70% will be training data
train = subset(df,sample==TRUE)

# testing data, 30% will be test data
test = subset(df,sample == FALSE)

#Train & build model 
model <- lm(G3 ~ .,train)

print(summary(model))

# Grab residuals
res <- residuals(model)

res <-as.data.frame(res)

print(head(res))

#Histogram of residuals
#print(ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha=0.5))

#plot(model)

G3.predictions <- predict(model,test)

results <- cbind(G3.predictions,test$G3)

#Name the two columns pred(prediction), real (actual data)
colnames(results) <- c('pred','real')
results <- as.data.frame(results)

print(head(results))

to_zero <- function(x){
    if (x < 0){
        return(0)
    }else{
        return(x)
    }
}

results$pred <- sapply(results$pred,to_zero)

print(min(results))

mse <- mean((results$real-results$pred)^2)

print('MSE')
print(mse)

SSE <- sum((results$pred - results$real)^2)
SST <- sum((mean(df$G3) - results$real)^2)

R2 <- 1 - SSE/SST
print(R2)