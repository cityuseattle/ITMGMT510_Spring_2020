#The trim=0.25 argument means that R will ignore 25 percenet of 
#the 8 observations (i.e.,2 observations)
#from both the lowest and highest end.
#So, whats's left is the mean of 1,2,3 and 6, which is 3.

v <- mean(c(-100,0,1,2,3,6,50,73),trim=0.25)

print(v)