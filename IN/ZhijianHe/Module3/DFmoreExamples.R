#EX1:Use as.data.frame() to convert a matrix into a dataframe
mat <- matrix(1:25,nrow = 5)
print(as.data.frame(mat))#Run to see the o/p


#EX 2: Check if mtcars is a dataframe using is.data.frame()
cars <- mtcars
print(is.data.frame(cars))#Run to see the o/p

#EX3:What is the average mpg value for all the cars?
print(mean(mtcars$mpg))#Run to see the o/p

#EX4: Select the columns am,gear, and carb
print(df[,c('am','gear','carb')])#Run to see the o/p

#EX5: Create a new column called performance,
#which is calculated by hp/wt.
cars$performance <- cars$hp/cars$wt
print(head(cars))#Run to see the o/p

#EX6: What is the average mpg for cars that
#have more than 100 hp AND a wt value of more than 2.5.
k<- mean(subset(cars,hp>100 & wt > 2.5)$mpg)
print(k)