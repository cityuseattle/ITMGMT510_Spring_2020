cars <- mtcars

firstTenRows <- cars[1: 10, ];
print(firstTenRows);

#conditional selection
sub1 <- df[(cars$mpg > 20 $ cars$cyl > 4), ]
print(sub1);

sub2 <- subset(cars, carb > 3 & cyl > 4);
print(sub2);

#select all except row #2
everythingButRowTwo <- cars[-2, ];
print(everythingButRowTwo);
