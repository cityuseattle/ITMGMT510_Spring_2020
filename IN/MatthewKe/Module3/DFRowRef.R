df <- mtcars
print(head(df)) #print first 6 rows

#returns the first line of the data frame (and not a vector!)
rowdf <-df[1,]
print(rowdf)

#To get the first line a row as a vector
vrow <- as.numeric(as.vector(df[1,]))
print(vrow) 