library(dplyr)
library(nycflights13)

#Head will print only first 6 rows of the o/p
print(head(filter(flights, month == 11, day == 3, carrier == 'AA')))

#Print first 10 position
print(slice(flights, 1:10))

#Arrange will order the coulmns in ascending order
print(head(arrange(flights, year, month, day, sched_arr_time)))

#Select certain columns
print(head(select(flights, carrier)))

#Rename the month col to airline_month col
print(head(rename(flights, airline_month = month)))

#Returns the unique values in carrier col
print(distinct(select(flights, carrier)))

#Prints the average of air time col
print(summarise(flights,avg_air_time = mean(air_time, na.rm = TRUE)))

#Print a random sample of the data frame
print(sample_n(flights, 10)) 