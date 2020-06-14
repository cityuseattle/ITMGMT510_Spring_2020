df <- mtcars
print(head(df))

#return first line of data frame (and not a vector)
rowdf <- df[1, ]
print(rowdf)

#to get the first line a row as a vector, use following
vrow <- as.numeric(as.vector(df[1, ]))
print(vrow)