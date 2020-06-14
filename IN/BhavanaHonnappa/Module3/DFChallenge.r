cars <- mtcars

first.ten.rows <- cars[1:10, ]
print(first.ten.rows)


sub <- subset(cars, carb >3 & cyl == 6)
print(sub)

sub2 <- subset(cars, carb >3 & cyl > 4)
print(sub2)

everything.but.row.two <- cars[-2, ]
print(everything.but.row.two)