# Set Up
n = 3
sample = 10000
stat = numeric(sample)

# Generate Random Samples
for (i in 1 : sample) {
    result = rnorm(3, 3, 5)
    stat[i] = (mean(result) - 3) / (var(result) / sqrt(3))
}

d = density(stat)
plot(d)
curve(dt(x, df = 2), from = -4, to = 4, col = "red", add = T)

