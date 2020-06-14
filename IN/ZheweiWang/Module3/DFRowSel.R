cars <- mtcars

first.ten.rows <- cars[1:10, ] # same as head (cars, 10)
print(first.ten.rows) 

#conditional selection
sub1 <- df[ (cars$mpg > 20 & cars$cyl > 4), ]
print(sub1)

sub2 <- subset(cars, carb > 3 & cyl > 4)
print(sub2) 

#select all except row2
everything.but.row.two <- cars[-2, ]
print(everything.but.row.two)

sub3 <- subset(cars, cyl==6)
print(sub3)
