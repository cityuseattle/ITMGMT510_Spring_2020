A <- list("a", "b", 1, 2);
print(A);

print(str(A))

print(typeof(A));

print(length(A))

print(A[1])

print(A[c(1:2)]);

print(A[c(TRUE, FALSE, FALSE, FALSE)]);

A[[2]] <- "n";
print(A);

A[[2]] <- NULL;
print(A);

