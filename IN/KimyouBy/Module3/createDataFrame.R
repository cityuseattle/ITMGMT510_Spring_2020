A <- data.frame(emp_id = c(1, 2, 3), names = c("John", "James", "Mary"), salary = c(111.1, 222.2, 333.3));
print(A);

print(typeof(A))
print(class(A))

#to get the number of column and row, we can use the ncol() and nrow() function
ncol(A);
nrow(A);

#to get the structure of the data frame, we can use the str() function
str(A);

#to select a column, use [], [[]], or $ to select
print(A["names"])
print(A$names)
print(A[[2]])