# Set Up
n = 7
sample = 10000
svar = numeric(sample)
pvar = numeric(sample)
statistic = numeric(sample)

#Generate Random Samples
for (i in 1 : 10000) {
    result = rnorm(7, 4, sqrt(6))
    svar[i] = var(result)
    statistic[i] = (n - 1) * svar[i] / 6
}

d = density(statistic)
plot(d)
curve(dchisq(x, df = 6), from = 0, to = 30, col = "red", add = T)

