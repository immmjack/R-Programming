df = read.csv(file = "~/Downloads/AppleStore.csv")
ratings = df$rating_count_tot
data = ratings[ratings > 5]
data = log(data)

# Check Normality
d = density(data)
plot(d)

# Hypothesis Testing
xbar = mean(data)
mu = 6.5
sigma = 2.6
n = length(data)
z = (xbar - mu) / (sigma / sqrt(n))
pval = pnorm(z, lower = F)

