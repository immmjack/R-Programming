# Let Y be an Exponential distribution with lambda = 1 / 3.
# The sample size is n = 15. There are 10000 random samples.
# We have two parameters: theta_1 is mean of Y's; theta_2 is n times minimum of Y's.

# Set up
trials = 10000
n = 15
theta_1 = numeric(trials)
theta_2 = numeric(trials)

# Make samples
for (i in 1 : trials) {
    sample = rexp(n, rate = 1 / 3)
    theta_1[i] = mean(sample)
    theta_2[i] = n * min(sample)
}

# Check unbiasedness
mean(theta_1) - 3    # I got -0.00797 \approx 0
mean(theta_2) - 3    # I got -0.03997 \approx 0

# Check relative efficiency
var(theta_2) / var(theta_1)    # I get 14.469 \approx n = 15
