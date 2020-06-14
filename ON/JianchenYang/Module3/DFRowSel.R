cars <- mtcars

first.ten.rows <- cars[1:10,] #Same as head(cars, 10)
print(first.ten.rows) #Run to see the o/p

#Conditional Selection
sub1 <- df[(cars$mpg > 20 & cars$cyl > 4),]
print(sub1)

sub2 <- subset(cars, carb > 3 & cyl >4)
print(sub2)

#Select a11 except row #2
everythiing.but.row.two <- cars[-2,]
print(everythiing.but.row.two)

#Select the rows where all cars have 6 cylinders (cyl)
sub3 <- subset(cars, cyl == 6)
print(sub3)