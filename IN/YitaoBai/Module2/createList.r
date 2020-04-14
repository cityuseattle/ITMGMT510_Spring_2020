v <- c(9,9,9)
A <- list("A","B",1,2,c(5,6,7),typeof(v))
print(A)
print(str(A))
print(typeof(A))
print(length(A))
print(A[1])
print(A[c(1:3)])
print(A[c(TRUE,FALSE,FALSE,FALSE)])

A[[2]] <- "n"
print(A)

A[[2]] <- NULL
print(A)