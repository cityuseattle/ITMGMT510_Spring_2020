df <- mtcars
#print first 6 rows of the dataframe
print(head(df))

#return the first line of the dataframe (and not a vector)
rowdf <- df[1, ]
print(rowdf)

#to get the first line a row as a vector
vrow <- as.numeric(as.vector(df[1,]))
print(vrow)