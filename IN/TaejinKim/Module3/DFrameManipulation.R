A <- data.frame(emp_id = c(1,2,3), names = c("John", "James", "Mary"), salary=c(111.1, 222.2, 333.3));

print (A);

A [1,2] <- "James";
print(A);


B <- rbind(A, list(4,"John", 444.4));
print(B);

B <- cbind(A, state=c("NY","NY","NY"));
print(B);

A$salary <- NULL;
print(A);