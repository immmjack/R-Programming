n = 15
lambda = 1 / 3

sample = 10000
var1 = numeric(10000)
var2 = numeric(10000)

for (i in 1 : sample) {
	result = rexp(n, lambda)
	avg = mean(result)
	var1[i] = sum((result - avg)^2) / n
	
	minimum = min(result)
	var2[i] = n * (minimum - avg)^2
	
}
var_1 = sum(var1) / sample
var_2 = sum(var2) / sample

eff = var_2 / var_1