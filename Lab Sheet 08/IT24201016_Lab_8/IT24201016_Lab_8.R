setwd("C:\\Users\\it24201016\\Desktop\\IT24201016_Lab_8")

weights <- read.table("Exercise - LaptopsWeights.txt", header=TRUE,sep=",")

w <- weights$Weight.kg.

pop_mean <- mean(w)
pop_sd <- sd(w)* sqrt((length(w)-1)/length(w)) 

cat("Population Mean =",pop_mean,"\n")
cat("Population SD =", pop_sd,"\n")

set.seed(123)  
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25){
  sample_data <- sample(w, size = 6, replace = TRUE)
  sample_means[i]<- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}
sample_means
sample_sds

mean_of_sample_means <-mean(sample_means)
sd_of_sample_means<- sd(sample_means)

cat("Mean of Sample Means =", mean_of_sample_means, "\n")
cat("SD of Sample Means=", sd_of_sample_means,"\n")