v <- mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim0=0.25);
print(v);


#The trim=0.25 argument means that R will ignore 25 percent of 
#The 8 observations (i.e., 2 observations)
#From both the lowest and hightest end
#So what's left is the mean of 1, 2, 3, and 6, which is 3 

V <-mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim=0.25);
print(v);