df<-mtcars#data framework
print(head(df))#first 6 rows
rowdf<-df[1,]
print(rowdf)#print first line
vrow<-as.numeric(as.vector(df[1,]))
print(vrow)#get first line data as a vector