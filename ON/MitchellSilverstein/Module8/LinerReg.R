library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

# Read CSV, note the delimiter (sep)
df <- read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))

#Check if you have NA values, NA means "Not Available"
print(any(is.na(df)))

#Grab only numeric columns
num.cols <- sapply(df, is.numeric)

#Filter to number columns for correlation
cor.data <- cor(df[,num.cols])

corrplot(cor.data,method='color')

#Since we're going to eventually try to predict the G3 score let's see a histogram of these scores
print(ggplot(df,aes(x=G3)) + geom_histogram(bins=20,alpha=0.5,fill='blue') + theme_minimal())
