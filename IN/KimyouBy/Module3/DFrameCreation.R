#some made up weather data vectors
days <- c('mon', 'tue', 'wed', 'thu', 'fri');
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE);

#we can create data frames using the data.frame() function and pass vector as arguent,
#which will then convert the vectors into columns of the data frame.

#pass in the vectors:
df <- data.frame(days, temp, rain);

#check structure
print(str(df))

print(summary(df))

#we can use the subset() functin to grab a subset of
#value from our data frame based off some condition
print(subset(df, subset = rain == TRUE))

print(subset(df, subset = temp > 23))

#by default order function sort in ascending order
sort.temp <- order(df$temp)
print(df[sort.temp,])

#we can pass a negative sign to do descending order
desc.temp <- order(-df['temp'])
print(df[desc.temp,])