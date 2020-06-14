A <- c(1,2,3,4,5,6);
print(A);

print(typeof(A));
print(class(A));
print(length(A));

B <- 1:8;
print(B);

print(B[2]);

print(B[c(2,5)]);

print(B[-2]);
print(B[c(FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)]);

print(B[B>5])

B[3] <- 9;
print(B);