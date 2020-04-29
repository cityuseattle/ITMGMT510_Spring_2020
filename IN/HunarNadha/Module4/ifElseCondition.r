A<- c(1,2);   #Create vector
B<- sum(A);   #1 + 2
print(A);
print(B);

if(B >= 5){
    print("B is greater or equal to 5")
} else if(B >= 3) {
    print("B is more than or equal to 3")
} else {
    print("B is less than 3")
}

#forLoop
#create a vector with values 1, 2, 3, 4, 5
A<-c(1:5)

#for each element and value in vector A
#print the element and value
for(e in A){
    print(e)
}

#while
i<- 1;
while(i<= 10) {
    print(i);
    i<- i+1;
}

#breakKey
A <-c (1:10);
for(e in A){
    if (e==5){
        break;
    }
    print(e);
}

#repeatLoop
i<- 1;
repeat {
     if(i>10)
        break;

      print(i);
      i<-i+1;
}

#productFun

A - c(1:5)
productVect <- function(a){
    res <- 1;
    for(e in a){
        res<-res * e;
    }
    productVect = res;
}
print(productVect(A));

B<-c(1:10);
print(productVect(B));

#defaultArgFun

productVect<- function(a=c(1:5)) {
    res <- 1;
    for(e in a) {
        res <- res * e;
    }
    #productVect = res;
    return(res);
}
print(productVect());
A <- c(1:5);
print(productVect(A));
B <- c(1:10);
print(productVect(B));