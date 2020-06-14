df = read.csv('student-mat.csv',header=TRUE, sep=';')

print(head(df))

#Run the code to see o/p

print(summary(df))


#check if the NA values

print(any(is.na(df)))