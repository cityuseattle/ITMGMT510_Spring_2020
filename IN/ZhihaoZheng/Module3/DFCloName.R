cars <- mtcars

colnames(cars)[2] <- 'Sec NEW NAMA'
print(head(cars))

colnames(cars) <- c('col1','col2','col3','col4','col5','col6','col7','col8','col9','col10','col11')
print(head(cars))