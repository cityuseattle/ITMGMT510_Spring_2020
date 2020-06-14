cars <- mtcars

first.ten.rows <- cars[1:10, ]
print(first.ten.rows)

sub1 <- df[ (cars$mpg > 20 & cars$cyl >4), ]
print(sub1)

sub2 <- subset(cars, carb > 3 & cyl >4)
print(sub2)

everthing.but.row.tow <- cars[-2, ]
print(everthing.but.row.tow)