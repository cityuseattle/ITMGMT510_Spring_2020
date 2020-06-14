cars <- mtcars

#Same as head(cars, 10)
first.ten.rows <- cars[1:10, ]
print(first.ten.rows)


#Conditional Selection
sub1 <- df[ (cars$mpg > 20 & cars$cyl > 4), ]
print(sub1)

sub2 <- subset(cars, carb > 3 & cyl > 4)
print(sub2)

#Select all except row #2
everything.but.row.two <- cars[-2, ]
print(everything.but.row.two)

#CHALLENGE Select all cars having 6 cylinders
sixcylinders <- subset(cars, cyl > 5 & cyl < 7)
print(sixcylinders)