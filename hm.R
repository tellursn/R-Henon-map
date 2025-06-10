a <- 1.4
b <- 0.3
n <- 100
x <- numeric(n)
x[1] <- 0.1
x[2] <- 0.1

for (t in 3:n) {
  x[t] <- 1 - a * x[t - 1]^2 + b * x[t - 2]
}

png("hm-timeseries100.png", width = 800, height = 600)
plot(1:n, x, type = "l", col = "blue",
     xlab = "t", ylab = expression(x[t]),
     )

dev.off()
