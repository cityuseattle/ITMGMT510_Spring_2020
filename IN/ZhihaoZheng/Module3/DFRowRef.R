df <- mtcars
print(head(df))

rowdf <- df[1, ]
print(rowdf)

vrow ,- as.numeric(as.vector(df[1, ]))
print(vrow)