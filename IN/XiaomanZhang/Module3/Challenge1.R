a <- c(1,1,1);
b <- c(2,2,2);
c <- c(3,3,3);
A <- cbind(a,b,c);

dimnames(A) <- list(c("a","b","c"));
print(A);