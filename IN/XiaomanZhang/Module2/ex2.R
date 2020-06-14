#the trim = 0.25 argument means that R wil ignore 25% of the 8 observations from both lowest and hignest end
v <- mean(c(-100,0,1,2,3,6,50,73), trim = 0.25);
print(v);