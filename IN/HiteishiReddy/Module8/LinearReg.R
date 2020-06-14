library(ggplot)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)


df <- Read.csv('student-mat.csv', header=TRUE, sep=';')

print(head(df))

# print(summary(df))

print(any(is.na(df)))

num.cols <- sapply(dgf, is.number)

cor.data <- cor(df[,num.cols])

corrplot(cor.data, method='color')

print(ggplot(df,aes(x=G3))+ geom_histogram(bin=20, alpha=0.5,fill='blue')+ theme_minomal())



