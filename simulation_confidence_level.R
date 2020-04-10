n = 25      # sample size
c = 0.59    # our answer from 3a
mu = 7      # the value for the mean

trials = 50000              # number of intervals to make
capture = c(TRUE, FALSE)    # make a vector to hold trues and falses

for (i in 1 : trials) {
    data = rnorm(25, mean = 7, sd = 4)
    xbar = mean(data)
    LB = xbar - 1.6         # the lower bound of the current interval
    UB = xbar + c * 0.8     # the upper bound of the current interval
    capture[i] = (mu > LB && mu < UB)   # did we get mu?
}

print(mean(capture))    # calculate and display capture percentage
