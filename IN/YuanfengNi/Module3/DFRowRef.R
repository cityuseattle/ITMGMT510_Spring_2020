df<-mtcars
#print first 6 rows of the dataframe
print(head(df))
rowdf<-df[1,]
print(rowdf)
vrow<-as.numeric(as.vector(df[1,]))
print(vrow)