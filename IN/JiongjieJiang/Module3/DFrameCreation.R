#Some made up weather data vectors
days <- c('mon', 'tue', 'wed', 'thu', 'fri')
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

#Pass in the vectors:
df <- data.frame(days, temp, rain)

#Check structure
print(str(df))

print(summary(df))

print(subset(df, subset = rain == TRUE))

print(subset(df, subset = temp > 23))

#by sefault order function sort in ascending order
sort.temp <- order(df$temp)
print(df[sort.temp,])

#Pass a negative sign to do descending order
desc.temp <- order(-df['temp'])
print(df[desc.temp,])