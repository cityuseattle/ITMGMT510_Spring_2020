library(dplyr)
library(nycflights13)

print(head(filter(flights,month==11,day==3,carrier=='AA')))

#print the first 10 position

print(slice(flights, 1:10))

#arrange will order the columns in ascending orders

print(head(arrange(flights,year,month,day,sched_arr_time)))
