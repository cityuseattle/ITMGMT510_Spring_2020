v <- c(length(rivers),   #Calculate the length of the rivers
       sum(rivers),      #Calculate the sum of the rivers
       mean(rivers),     #Calculate the mean of the rivers
       median(rivers),   #Calculate the median of the rivers
       var(rivers),      #Calculate the variance of the rivers
       sd(rivers),       #Calculate the standard deviation of the rivers 
       min(rivers),      #Calculate the minimum of the rivers 
       max(rivers))      #Calculate the maximum of the rivers

print(v)   #print the vector v