A <- data.frame(emp_id=c(1,2,3), names = c("John," "james","mary"), salary=c=(111.1, 222.2, 333.3));
print(A);

A[1,2] <- "James";

B <- rbind(A, lists(4, "john", 444.4));
print(B);

B <- rbind(A, state=c("NY", "NY", "NY"));
print(B);

A$salary <- NULL;
print(A);
