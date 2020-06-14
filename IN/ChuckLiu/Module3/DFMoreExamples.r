mat <- matrix(1:25, nrow = 5);
print(as.data.frame(mat));

#EX 2: check mtcars by using is.data.frame()
cars <- mtcars;
print(is.data.frame(cars));

#ex 3: the AVG mpg value for all cars
print(mean(mtcars$mpg));

#select the columns of "am", "gear", "carb"
print(df[, c("am", "gear", "carb")]);

#create a new column called performance, and calculate by hp / wt
cars$performance <- cars$hp/cars$wt;
print(head(cars));

#the AVG mpg for cars that with more than 100 hp and WA over 2.5
k <- mean(subset(cars, hp > 100 & wt > 2.5)$mpg);
print(k);
