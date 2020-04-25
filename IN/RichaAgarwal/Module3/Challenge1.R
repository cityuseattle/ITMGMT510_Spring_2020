cars <- mtcars

first.ten.rows <- cars[1:10,]
print(first.ten.rows)

sub1 <- subset(cars, carb > 3 & cyl == 6)

everything.but.row.two <- cars[-2,]
print(everything.but.row.two)