library(tidyr)
library(data.table)

df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))

df2 <- separate(df, x, c(NA, "ABC", "XYZ"))

print((df2)

#unite separated columns
def.unit <- unite(def2, new.Joind.col, ABC, XYZ)
print(df.unit)
