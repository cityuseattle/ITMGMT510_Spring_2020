A <- matrix(c(1,2,3,4,6,7,8,9,0),nrow=3,ncol=3,
dimnames = list(c("X","Y","Z"),c("A","B","C")))

print(A[-3,])

print(A[2,2])

print(A[A>4])

A[2,2] <- 100;
print(A)

B <- rbind(A,c(1,2,33))
print(B)

C <- cbind(A,c(1,2,3))
print(C)

A <- t(A)
print(A)

o <- c(5,9,99)
p <- c(8,2,33)
q <- c(0,7,77)


#challenge 1
M <- cbind(o,p,q)
rownames(M) <- c('a','b','c')

print(M)