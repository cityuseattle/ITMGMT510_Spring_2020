days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

df <- data.frame(days,temp,rain)

print(str(df))

print(summary(df))

print (subset(df, subset=rain==TRUE))

print (subset(df, subset= temp>23))

sort.temp <- order(df$temp)
print (df[sort.temp,])

desc.temp <- order(-df['temp'])
print (df[desc.temp,])


