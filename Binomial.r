> dbinom(x = 10, size = 12, prob = .6)
[1] 0.06385228
> dbinom(x = 7, size = 20, prob = 0.5)
[1] 0.07392883
> pbinom(2, size = 5, prob = 0.5, lower.tail = FALSE)
[1] 0.5
> pbinom(4, size = 10, prob = 0.3)
[1] 0.8497317
> qbinom(0.1, 10, 0.4)
[1] 2
> qbinom(0.4, 30, 0.25)
[1] 7
> rbinom(10, 100, 0.3)
 [1] 30 28 26 26 32 25 30 27 36 33
> results <- rbinom(10, 100, 0.3)
> results
 [1] 30 33 34 25 25 37 27 28 33 24
> mean(results)
[1] 29.6
