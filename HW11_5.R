# Set Up
alpha = 0.1                                     # Significance Level
p = 50                                          # Null Hypothesis
n = 500                                         # Sample
sigma = sqrt(p * p / n)                         # Standard Deviation
cval1 = qnorm(alpha / 2, p, sigma)              # Critical Value 1
cval2 = qnorm(alpha / 2, p, sigma, lower = F)   # Critical Value 2

# Plot the Curve
curve(
      pnorm(cval1, x, sqrt(x * x / n)) + pnorm(cval2, x, sqrt(x * x / n), lower = F), 
      from = 30, 
      to = 70, 
      col = "blue", 
      main = "Power Function", 
      xlab = expression(p), 
      ylab = expression("Power")
      )

