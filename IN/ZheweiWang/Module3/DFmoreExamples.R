#ex1: use as.data.frame() to convert a matrix into a dataframe
mat <- matrix(1:25, nrow = 5)
print(as.data.frame(mat))

#check matrix is a dataframe 
cars <- mtcars
print(is.data.frame(cars))

#what is average mpg for all cars
print(mean(mtcars$mpg))

#select the column am,gear, and carb
print(df[, c('am', 'gear', 'carb')])

#create new column 'performance' which is calculated by hp/wt
cars$performance <- cars$hp/cars$wt
print(head(cars))

#what is average mpg for cars have more than 100 hp and a wt more than 2.5
k <- mean(subset(cars, hp > 100 & wt > 2.5)$mpg)
print(k)