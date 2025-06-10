a <- 1.4
b <- 0.3
n <- 100
x <- numeric(n)
x[1] <- 0.1
x[2] <- 0.1

for (t in 3:n) {
  x[t] <- 1 - a * x[t - 1]^2 + b * x[t - 2]
}

png("hm_RP.png", width = 800, height = 600)
plot(x[1:(n - 1)], x[2:n],
     pch = 19, col = "black",
     xlab = expression(x[t]), ylab = expression(x[t+1]),
     )

dev.off()
