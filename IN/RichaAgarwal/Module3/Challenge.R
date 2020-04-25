#Create three vectors  x,y,z  with integers 
#and each vector has 3 elements. Combine the three vectors 
#to become a 3×3 matrix  A  where each column represents a vector. Change the row names to  a,b,c.

X <- c(1,2,3)
Y <- c(4,5,6)
Z <- c(7,8,9)

A <- matrix(c(X,Y,Z), nrow = 3, ncol = 3)
print(A)
rownames(A) <- c("a","b","c")
print(A)