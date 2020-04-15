v <- mean(c(-100,0,1,2,3,6,50,73), trim=0.25)

print (v)

# trim = 0.25 means to ignore 25% of 8 observations from 
#both the lowest and highest end. so 1,2,3, and 6 are left.

m <- mean(c(-100,0,1,2,3,5,6,73), trim=0.25)

print (m)