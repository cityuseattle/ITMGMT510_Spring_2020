# Some made up weather data vectors
days <- c('mon', 'tue', 'wed', 'thu', 'fri');
temp <- c(22.2, 21, 23, 24.3, 25);
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE);

#Create a dataFrame with three vectors
df <- data.frame(days, temp, rain);

# Check structure
print(str(df))

print(summary(df));

#subset() function to grab a subset of values from dataFrame 
print(subset(df, subset = rain == TRUE));
print(subset(df, subset = temp > 23));

#sore in ascending order by order() function
sort.temp <- order(df$temp);
print(df[sort.temp,]);

#sort in descending order by use a negative sign
desc.temp <- order(-df['temp']);
print(df[desc.temp,]);