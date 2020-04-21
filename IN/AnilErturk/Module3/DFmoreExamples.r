#EX1:Use as.data.frame() to convert a matrix into a dataframe 
mat <- matrix(1:25,nrow = 5) 
print(as.data.frame(mat))

#Ex 2: Check if mtcars is a dataframe using is.data.frame() 
cars <- mtcars 
print(is.data.frame(cars))

#EX3:What is the average mpg value for all the cars? 
print(mean(mtcars$mpg))

#Ex4: Select the columns am,gear, and carb. 
print(df[,c('am','gear','carb')])

#Ex5: Create a new column called performance, 
#which is calculated by hp/wt. 
cars$performance <- cars$hp/cars$wt
print(head(cars))

#Ex6: What is the average mpg for cars that 
#have more than 100 hp AND a wt value of more than 2.5. 
k<- mean(subset(cars,hp>100 & wt > 2.5)$mpg) 
print(k) 
