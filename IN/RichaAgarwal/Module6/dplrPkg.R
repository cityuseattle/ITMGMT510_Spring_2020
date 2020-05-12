library(dplyr)
library(nycflights13)

print(head(filter(flights,month==11,day==3,carrier=='AA')))