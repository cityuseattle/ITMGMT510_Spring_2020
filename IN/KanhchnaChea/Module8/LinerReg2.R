library(caTools)
library(ggplot2)

df <- read.csv('student-mat.csv',header=TRUE, sep=';')

set.seed(101)

sample <- sample.split(df$G3, SplitRatio = 0.70)

train = subset(df, sample == TRUE)

test = subset(df, sample == FALSE)

model <- lm(G3 ~ .,train)

print(summary(model))

res <- residuals(model)

res <- as.data.frame(res)

print(head(res))

#print(ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha=0.5))

#plot(model)

G3.predictions <- predict(model,test)

results <- cbind(G3.predictions,test$G3)

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
SST <- sum( (mean(df$G3) - results$real)^2)

R2 <- 1 - SSE/SST
print(R2)

