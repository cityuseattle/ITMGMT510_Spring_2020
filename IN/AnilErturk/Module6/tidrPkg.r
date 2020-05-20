library(tidyr) 
library(data.table) 

# Let's create some fake data that needs to be cleaned using tidyr 

comp <- c(1,1,1,2,2,2,3,3,3) 
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000) 
ql <- runif(9, min=0, max=100) 
q2 <- runif(9, min=0, max=100) 
q3 <- runif(9, min=0, max=100) 
q4 <- runif(9, min=0, max=100) 

df <- data.frame(comp=comp,year=yr,Qtrl = ql,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4) 
print(df) 

df2<-gather(df,Quarter,Revenue,Qtr1:Qtr4)
print(df2)

print(spread(df2,Quarter,Revenue))