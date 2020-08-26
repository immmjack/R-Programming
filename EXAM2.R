n = 5
alpha0 = 2
beta0 = 2
c = 0.0006

trials = 10000
significance = c(TRUE, FALSE)

for (i in 1 : trials) {
    result = rbeta(n, alpha0, beta0)
    statistic = prod(result) * prod(1 - result)
    significance[i] = (statistic > c)
}

mean(significance)

