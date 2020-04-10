n = 25
c = 0.59
mu = 7

trials = 50000
capture = c(TRUE, FALSE)

for (i in 1 : trials) {
    data = rnorm(25, mean = 7, sd = 4)
    xbar = mean(data)
    LB = xbar - 1.6
    UB = xbar + c * 0.8
    capture[i] = (mu > LB && mu < UB)
}

print(mean(capture))
