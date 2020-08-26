p_hat = 2 / 3
n = 10
trials = 10000
z = qnorm(0.05, lower = F)

xbars = replicate(trials, mean(1 + rgeom(n, p_hat)))
margin_error = z * sqrt(xbars - 1) / (xbars * sqrt(n * xbars))
low_bound = 1 / xbars - margin_error
up_bound = 1 / xbars + margin_error

sum(low_bound < p_hat & p_hat < up_bound) / trials