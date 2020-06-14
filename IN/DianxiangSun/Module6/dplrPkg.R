library(dplyr)
library(nycflights13)

#head will print only first 6 rows of the o/p
print(head(filter(flights,month==11,day==3,carrier=='AA')))

#Print first 10 position
print(slice(flights, 1:10))

#arrange will order the column in ascending order
print(head(arrange(flights,year,month,day,sched_arr_time)))

#select certain columns
print(head(select(flights,carrier)))

# Rename the month col to airline_month col
print(head(rename(flights,airline_month = month)))

#returns the unquie values in carrier column
print(distinct(select(flights,carrier)))

#print the average of air time column
print(summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE)))

#print a random sample of the data frame
print(sample_n(flights,10))