# Scaling one column at a time vs. a whole dataset

rm(list = ls())

set.seed(42)
data <- data.frame(x1 = runif(100),
                   x2 = runif(100),
                   x3 = runif(100))

head(data)

# scale each column on its own
d1 <- data
d1$x1 <- scale(d1$x1)
d1$x2 <- scale(d1$x2)
d1$x3 <- scale(d1$x3)
head(d1)

# scale all columns at once
d2 <- scale(data)
head(d2)
