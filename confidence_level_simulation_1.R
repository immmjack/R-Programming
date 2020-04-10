# Assume the n = 1 data come from the distribution Unif(0, 9) 
# i.e., the parameter we want to estimate is 3. We want to 
# check the confidence level of the interval (theta_from_MME, 
# 2 * theta_from_MME). We make 50000 intervals and then see which 
# capture theta and which don't.

n = 1       # sample size
theta = 3   # parameter

trials = 50000              # number of intervals to make
capture = c(TRUE, FALSE)    # make a ventor to store trues and falses

for (i in 1 : trials) {
    data = runif(1, 0, 9)
    theta_from_MME = sqrt(2 * data)
    lower_bound = theta_from_MME        # lower bound
    upper_bound = 2 * theta_from_MME    # upper bound
    capture[i] = (theta > lower_bound && theta < upper_bound)
}

print(mean(capture))
