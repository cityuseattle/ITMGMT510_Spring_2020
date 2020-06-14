library(ggplot2);
library(ggthemes);
library(dplyr);
library(corrplot);
library(corrgram);

#Read CSV, note the delimiter
df <- read.csv('student-mat.csv', header = TRUE, sep = ';');

print(head(df));

#print(summary(df));

#Check if you hava NA values by using is.na();
print(any(is.na(df)));

#grab only numeric columns
num.cols <- sapply(df, is.numeric);

#Filter to numeric columns for correlation
cor.data <- cor(df[, num.cols]);

#corrplot(cor.data, method = 'color');

#Check histogram of scores
print(ggplot2(df, aes(x = G3)) + geom_histogram(bins = 20, alpha = 0.5, fill = 'blue') + theme_minimal());