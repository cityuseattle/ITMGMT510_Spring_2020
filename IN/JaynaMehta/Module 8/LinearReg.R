library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)


# Read CSV, note the delimiter (SEP)
df <- read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))

#print(summary(df))

print(any(is.na(df)))

#Grab only numeric colunmns
num.cols <- sapply(df, is.numeric)

# Filter to numeric columns for correlation
cor.data <- cor(df[,num.cols])

print(cor.data,method='color')

print(ggplot(df,aes(x=G3)) + geom_histogram(bins=20,alpha=0.5,fill='blue') + theme_minimal())