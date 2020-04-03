# Binomial Distribution in R

The binomial distribution is one of the most commonly used distribution in statistics. Here explains how to work with the binomial distribution in R using the functions `dbinom`, `pbinom`, `qbinom`, and `rbinom`.



## `dbinom`

The function **`dbinom`** returns the value of the **probability density function (pdf)** of the binomial distribution given a certain random variable *x*, number of trials (size) and probability of success on each trial (prob). The syntax for using dbinom is as follows:

```R
dbinom(x, size, prob)
```



Put simply, **`dbinom`** finds the probability of getting a certain number of successes **(*x*)** in a certain number of trials **(size)** where the probability of success on each trial is fixed **(prob)**.



### Example 1

Bob makes 60% of his free-throw attempts. If he shoots 12 free throws, what is the probability that he makes exactly 10?

```R
# find the probability of 10 successes during 12 trials where the probability of
# success on each trial is 0.6

> dbinom(x = 10, size = 12, prob = .6)
[1] 0.06385228
```



### Example 2

Sasha flips a fair coin 20 times. What is the probability that the coin lands on heads exactly 7 times?

```R
# find the probability of 7 successes during 20 trials where the probability of
# success on each trial is 0.5

> dbinom(x = 7, size = 20, prob = 0.5)
[1] 0.07392883
```



## `pbinom`

The function **pbinom** returns the value of the **cumulative density function (cdf)** of the binomial distribution given a certain random variable *q*, number of trials (size) and probability of success on each trial (prob). The syntax for using pbinom is as follows:

```R
pbinom(q, size, prob)
```



Put simply, **`pbinom`** returns the area to the left of a given value *q* in the binomial distribution. If you’re interested in the area to the right of a given value *q*, you can simply add the argument **`lower.tail = FALSE`**

```R
pbinom(q, size, prob, lower.tail = FALSE)
```



### Example 1

Ando flips a fair coin 5 times. What is the probability that the coin lands on heads more than 2 times?

```R
# find the probability of more than 2 successes during 5 trials where the
# probability of success on each trial is 0.5

> pbinom(2, size = 5, prob = 0.5, lower.tail = FALSE)
[1] 0.5
```



### Example 2

Suppose Tyler scores a strike on 30% of his attempts when he bowls. If he bowls 10 times, what is the probability that he scores 4 or fewer strikes?

```R
# find the probability of 4 or fewer successes during 10 trials where the
# probability of success on each trial is 0.3

> pbinom(4, size = 10, prob = 0.3)
[1] 0.8497317
```



## `qbinom`

The function **`qbinom`** returns the value of the **inverse cumulative density function (cdf)** of the binomial distribution given a certain random variable *q*, number of trials (size) and probability of success on each trial (prob). The syntax for using qbinom is as follows:

```R
qbinom(q, size, prob)
```



Put simply, you can use **`qbinom`** to find out the *p*-th quantile of the binomial distribution.



```R
# find the 10th quantile of a binomial distribution with 10 trials and prob
# of success on each trial = 0.4

> qbinom(0.1, 10, 0.4)
[1] 2
```



```R
# find the 40th quantile of a binomial distribution with 30 trials and prob
# of success on each trial = 0.25

> qbinom(0.4, 30, 0.25)
[1] 7
```



## `rbinom`

The function **`rbinom`** generates a **vector of binomial distributed random variables** given a vector length *n*, number of trials (size) and probability of success on each trial (prob). The syntax for using rbinom is as follows:

```R
rbinom(n, size, prob)
```



```R
# generate a vector that shows the number of successes of 10 binomial experiments with
# 100 trials where the probability of success on each trial is 0.3.

> rbinom(10, 100, 0.3)
[1] 30 28 26 26 32 25 30 27 36 33
```



```R
# store the vector first
> results <- rbinom(10, 100, 0.3)
> results
 [1] 30 33 34 25 25 37 27 28 33 24

# find mean number of successes in the 10 experiments (compared to expected
# mean of 30)

> mean(results)
[1] 29.6
```

