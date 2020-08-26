# Set Up
n = 60
sample = 50000
t_stat = numeric(sample)

# Generate Samples
for (i in 1 : sample) {
    result = rexp(n, rate = 3)
    t_stat[i] = (mean(result) - 1 / 3) / (sd(result) / sqrt(n))
}

# Plot
d = density(t_stat)
plot(d, xlim = c(-4, 4), ylim = c(0, 0.4))
curve(dt(x, df = n - 1), add = T)

