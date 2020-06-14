x <- c(2, 5, 6);
y <- c(10, 3, 7);
z <- c(4, 9, 8);

A <- cbind(x,y,z);
print(A);

rownames(A) <- c("a", "b", "c");
print(A);