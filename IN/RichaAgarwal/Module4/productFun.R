A = c(1:5)

productVect = function(a){ #productvect is the function name, the function agrument
res = 1                    #res=1
for(e in a){            #loop on the vector elements
    res = res * e     # res = res * e
}
  productVect = res   #productVect = "Function name "
}
print(productVect(A))

B = c(1:10)
print(productVect(B))