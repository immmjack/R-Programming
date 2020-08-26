n = 10
mu = 4
sd = 5
sample = 10000
var1 = numeric(sample)
var2 = numeric(sample)
c = 3 / 2 * sqrt(2)
d = 3 / 2 * sqrt(2)

for (i in 1 : sample) {
	result = rnorm(n, mu, sd)
	avg = mean(result)
	
	var1[i] = sum((result - avg)^2) / n
	
	var2[i] = (result[1] - avg)^2 + c^2 * (result[2] - avg)^2 + d^2 * (result[3] - avg)^2
}
var_1 = sum(var1) / sample
var_2 = sum(var2) / sample

eff = var_2 / var_1