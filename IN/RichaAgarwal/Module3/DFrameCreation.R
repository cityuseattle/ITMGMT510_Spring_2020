days <- c('mon', 'tue','wed','thu','fri')
temp <- c(22.2,21,23,24.5,25)
rain <- c(TRUE, TRUE,FALSE,FALSE,TRUE)

#pass in the vectors
df <- data.frame(days,temp,rain)

print(str(df)) #check structure

print(summary(df))

print(subset(df,subset=rain==TRUE))

print(subset(df,subset=temp>23))

sort.temp <- order(df$temp)
print(df[sort.temp,])

desc.temp <- order(-df['temp'])
print(df[desc.temp,])