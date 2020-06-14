mat<- matrix(1:25, nrow =5)
print(as.data.frame(mat))

cars<-mtcars
print(is.data.frame(cars))

print(mean(mtcars$mpg))

print(df[, c('am', 'gear', 'carb')])


cars$performance <- cars$hp/cars$wt
print(head(cars))


k<-mean(subset(cars, hp>100 & wt>2.5) $mpg)
print(k)
