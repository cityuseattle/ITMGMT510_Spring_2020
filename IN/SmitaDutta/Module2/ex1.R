
# length function returns the number of elements in the rivers data.
# sum will return the cummulative sum of all the elements in the rivers data
#mean will return the sum total divided by total number of elements
#median will arrange the values of the data set in the increasing order and analyze which value lies in the halfway of the data set
#The var R function will compute the sample variance of a numeric input vector.
#sd computes the standard deviation of the values in rivers data
#min will return the minimum element from the rivers data
#max will return the mx value from the rivers data
v <- c(length(rivers), sum(rivers), mean(rivers), median(rivers),var(rivers), sd(rivers), min(rivers), max(rivers))


#print all the values in the vector
print(v)