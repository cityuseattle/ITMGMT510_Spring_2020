library(caTools)
library(ggplot2)

#read CSV, note the delimiter(sep)
df<-read.csv('student-mat.csv',header=TRUE,sep=';')

#set a random seed sp your "random" results are the same as this HOP
set.seed(101)

#split up the sample, basically randomly assigns a booleans to a new column "sample"
sample<-sample.split(df$G3,SplitRatio=0.70)#SplitRatio=percent of sample==TRUE

#training data, 70% will be training data
train=subset(df,sample==TRUE)

#testing data, 30% will be test data
test=subset(df,sample==FALSE)

#train &build model
model<-lm(G3~.,train)

print(summary(model))

#grab residuals
res<-residuals(model)

#convert to DataFrame for ggplot
res<-as.data.frame(res)

#print first 6 rows of the res column
print(head(res))

#histogram of residuals
#print(ggplot(res,aes(res))+geom_histogram(fill='blue',alpha=0.5))

#plot(model)

G3.predictions<-predict(model,test)

#create a dataframe with the two columns the prediction data and the
#actual data
results<-cbind(G3.predictions,test$G3)

#name the two columns pred(prediction), real (actual data)
colnames(results)<-c('pred','real')
results<-as.data.frame(results)

print(head(results))

#function to check if the number is <0, then make it zero
to_zero<-function(x){
    if (x<0){
        return(0)
    }else{
        return(x)
    }
}

results$pred<-sapply(results$pred, to_zero)

#to make sure that the min value of your predicted col is zero
print(min(results))

mse<-mean((results$real-results$pred)^2)

print('MSE')
print(mse)

SSE<-sum((results$pred-results$real)^2)
SST<-sum((mean(df$G3)-results$real)^2)

R2<-1 - SSE/SST
print(R2)