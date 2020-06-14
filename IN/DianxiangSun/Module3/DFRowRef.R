df<-mtcars
print(head(df)) #first 6 rows of the df

#returns the first line of the data frame (and not a vector!)
rowdf<-df[1,]
print(rowdf)

#to get the first line a row as avector, use following
vrow<-as.numeric(as.vector(df[1,]))
print(vrow)