A<-data.frame(emp_id=c(1,2,3),names=c("John","James","Mary"),salary=c(111.1,222.2,333.3))
print(A)

#To modify the value at first row and second column
A[1,2]<-"James"
print(A)

#To add a row, use the rbind() function
B<-rbind(A,list(4, "John", 444.4))
print(B)

#To add a column, use the cbind() function
B<-cbind(A,state=c("NY","NY","NY"))
print(B)

#Todelete a column
A$salary<-NULL
print(A)