cars<-mtcars

#rename second column
colnames(cars)[2]<-'Sec NEW NAME'
print(head(cars))

#rename all at once with a vector
colnames(cars)<-c('col1','col2','col3','col4','col5','col6','col7','col8','col9','col10','col11')
print(head(cars))