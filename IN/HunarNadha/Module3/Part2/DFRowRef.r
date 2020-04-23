#print first 6 rows of the dataframe
df <- mtcars
print(head(df)) 

#returns the first line of the data frame (and not a vector!)
rowdf <- df[1, ]
print(rowdf)

#to get the first line a row as a vector, use following
vrow <- as.numeric(as.vector(df[1, ]))
print(vrow)
