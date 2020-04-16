#display each item in the rivers dataset 
v <- c(length(rivers), 
        sum(rivers),
        mean(rivers),
        median(rivers),
        var(rivers),
        sd(rivers),
        min(rivers),
        max(rivers));
print(v);