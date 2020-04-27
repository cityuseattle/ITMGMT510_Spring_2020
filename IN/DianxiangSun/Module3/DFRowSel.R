cars<-mtcars

first.ten.rows<-cars[1:10,] #same as head(cars, 10)
print(first.ten.rows) #run to see the o/p


#conditional selection
sub1<-df[(cars$mpg>20 & cars$cyl>4),]
print(sub1)

sub2<-subset(cars, carb>3 & cyl>4)
print(sub2)

#Challenge
sub3<-df[(cars$cyl==6),]
print(sub3)

#select all except row #2
everything.but.row.two <-cars[-2,]
print(everything.but.row.two)