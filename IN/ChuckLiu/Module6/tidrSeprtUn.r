library(tidyr);
library(data.table);

df <- data.frame(x = c(NA, "a.x", "b,y", "c.z"));

df2 <- separate(df, x, c("ABC", "XYZ"));

print(df2);

#unit the seperated columns into one col using unite
df.unit <- unite(df2, new.Joind.col, ABC, XYZ);
print(df.unit);
