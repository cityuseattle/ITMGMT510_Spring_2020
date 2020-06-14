df = read.csv('student-mat.csv',header=TRUE, sep=';')

print(head(df))

#Run the code to see o/p

print(summary(df))


#check if the NA values

print(any(is.na(df)))

#Grab only numeric columns
num.cols = sapply(df, is.numeric)

#Filter to numeric columns for correlations
cor.data = cor(df[,num.cols])

print(cor.data)