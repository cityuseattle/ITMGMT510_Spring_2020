library(caTools)

#Read csv, note the delimiter(sep)
df = read.csv('student-mat.csv',header=TRUE, sep=';')

set.seed(101)

sample = sample.split(df$G3, SplitRatio = 0.70)
train = subset(df,sample == TRUE)

test = subset(df, sample == FALSE)

model = lm(G3 ~ .,train)
print(summary(model))

res = residuals(model)
res = as.data.frame(res)

print(head(res))