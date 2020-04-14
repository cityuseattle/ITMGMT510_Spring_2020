A <- c(1,2,3,4,5,6)
print (A)

B <- 1:10
print(B)
print(B[5])
print(B[c(2,5)])
print(B[-5])
print(B[c(-1,-2)])
print(B[c(FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)])
print(B[B>=6])
print(B[3] <- 99)
print(B)