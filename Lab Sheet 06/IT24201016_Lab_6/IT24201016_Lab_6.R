setwd ("C:\\Users\\nayan\\OneDrive\\Desktop\\IT24201016_Lab_6")
n <- 50
p <- 0.85


X_distribution <- "Binomial(n = 50, p = 0.85)"
cat("Distribution of X:", X_distribution, "\n")


probability_at_least_47 <- 1 - pbinom(46, n, p)
cat("Probability that at least 47 students passed:", probability_at_least_47, "\n")

lambda <- 12


X_distribution_call_center <- "Poisson(lambda = 12)"
cat("Distribution of X:", X_distribution_call_center, "\n")


probability_exactly_15 <- dpois(15, lambda)
cat("Probability that exactly 15 calls are received:", probability_exactly_15, "\n")


