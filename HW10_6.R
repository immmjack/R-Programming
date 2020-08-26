set.seed(2020)
df = read.csv("~/Downloads/pibinary.csv")
data = df[df >= 0]
c = sample(data, 314)
count = length(c[c == 1])
prop = count / 314
pval = (prop - 0.5) / (sqrt(0.5 * 0.5 / 314))

