library(dplyr);
library(nycflights13);

#head will print only first 6 rows of the o/p
print(head(filter(flights, month == 11, day == 3, carrier == 'AA')));

#Print the first 10 positions
print(slice(flights, 1 : 10));

#arrange will order the coulmns in ascending order
print(head(arrange(flights, year, month, day, sched_arr_time)));

#Select certain columns
print(head(select(flights, carrier)));

#Rename the month col to airline_month col
print(head(rename(flights, airline_month = month)));

#return the unique values in carriers: distinct
print(distinct(select(flights, carrier)));

#summarise(): print the average of air time col
print(summarise(flights, avg_air_time = mean(air_time, na.rm = TRUE)));

#sample_n, print a random sample of the data frame
print(sample_n(flights, 10));
