df <- mtcars
print(head(df))

#returns the first line of the data frame
rowdf <- df[1,]
print(rowdf)

#To get the first line a row as a vector, use following
vrow <- as.numeric(as.vector(df[1,]))
print(vrow)
