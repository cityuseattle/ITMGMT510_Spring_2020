#using datasets river from the R to calculate the number of rivers, and sum, mean, meadian, variance, 
#standard deviation, minimum and maximum of rivers in North America
v <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
    sd(rivers), min(rivers), max(rivers))

print(v) #print the vector
