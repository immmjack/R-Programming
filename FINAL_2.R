n = 15  # sample size
lambda = 1 / 2  # parameter in exponential distribution
trials = 10000  # simulation times
statistic = numeric(trials)

for (i in 1 : trials) {
    sample = rexp(n, lambda)    # random samples
    mean = mean(sample)
    statistic[i] = mean * exp(-mean / 2)
}

quantile(statistic, 0.08)