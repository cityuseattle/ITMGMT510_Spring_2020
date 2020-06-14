#trim is 25%, so remove the highest two numbers and the lowest two numbers (8 * 25% = 2)
v <- mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim = 0.25);

print(v);