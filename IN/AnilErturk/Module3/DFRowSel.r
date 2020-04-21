cars <- mtcars 

first.ten.rows <- cars[1:10, ] # Same as head(cars, 10) 
print(first.ten.rows) #Run to see the o/p 

# Conditional Selection 
subl <- df[ (cars$mpg > 20 & cars$cyl > 4), ] 
print(subl) #Run ur code to see the o/p 

sub2 <- subset(cars, carb > 3 & cyl > 4) 
print(sub2) #Run ur code to see the o/p 

#Select all except row #2 
everything.but.row.two <- cars[-2, ] 
print(everything.but.row.two) #Run to see the o/p 

sub3 <- subset(cars, cyl > 6) 
print(sub3) #Run ur code to see the o/p 