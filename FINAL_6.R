n = 13
r = 4
trials = 50000
correction = (n + 1) / 6
area = numeric(trials)
deviance = numeric(trials)
deviation = numeric(trials)

for (i in 1 : trials) {
    sample = numeric(n)
    square = numeric(n)
    for (j in 1 : n) {
        sample[j] = runif(1, r - sqrt(j), r + sqrt(j))
        square[j] = sample[j]^2
    }
    area[i] = pi * (mean(square) - correction)
    deviance[i] = area[i] - pi * r^2
    deviation[i] = deviance[i]^2
}

mean(area)
mean(deviance)
mean(deviation)
