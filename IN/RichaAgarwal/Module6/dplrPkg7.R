library(dplyr)
library(nycflights13)

print(head(filter(flights,month==11,day==3,carrier=='AA')))

#print the first 10 position

print(slice(flights, 1:10))

#arrange will order the columns in ascending orders

print(head(arrange(flights,year,month,day,sched_arr_time)))

#select certain columns
print(head(select(flights,carrier)))

# Rename the month col to airine_month col
print(head(rename(flights,airline_month = month)))

#returns the unique values in carrier col
print(distinct(select(flights,carrier)))

print(summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE)))
