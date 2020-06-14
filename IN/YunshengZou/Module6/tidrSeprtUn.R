library(tidyr)
library(data.table)

df <- data.frame(x = c(NA,"a.x","b.y","c.z"))

df2 <- separate(df,x,c("ABC","XYZ"))
print(df2)