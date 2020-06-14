days <- c('mon', 'tue', 'wed', 'thu','fri')
temp<-c(22.2, 21, 23, 24.3, 25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)


df<- data.frame(days,temp,rain)

print(str(df))

print(summary(df))

print(subset(df,subset=rain==TRUE))

sort.temp<-order(df$temp)
print(df[sort.temp,])

desc.temp <-order(-df['temp'])
print(df[desc.temp,])