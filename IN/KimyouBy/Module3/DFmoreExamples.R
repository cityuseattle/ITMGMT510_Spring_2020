#Ex1: use as.data.frame() to convert a matrix to a dataframe
mat <- matrix(1:25, nrow =5)
print(as.data.frame(mat))

#Ex2: check if mtcars is a dataframe using is.data.frame()
cars <- mtcars
print(is.data.frame(cars))

#Ex3: what is the average mpg value for all the cars?
print(mean(mtcars$mpg))

#Ex4: select the column am, gear, and carb
print(df[, c('am', 'gear', 'carb')])

#Ex5: create a new column called performance, which is calculated by hp/wt
cars$performance <- cars$hp/cars$wt
print(head(cars))

#Ex6: what is the average mpg for cars that have more than 100 hp and a wt value of more than 2.5
k <- mean(subset(cars, hp > 100 & wt > 2.5) $mpg)
print(k)