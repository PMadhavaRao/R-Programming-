data(iris)
summary(iris)
iris[ (iris$Sepal.Length == 5.1) & (iris$Petal.Length == 1.4), ]
iris[,3,]
mean_sepal_length <- mean(iris$Sepal.Length)
median_sepal_length <- median(iris$Sepal.Length)
variance_sepal_length <- var(iris$Sepal.Length)

cat("Mean Sepal Length:", mean_sepal_length, "\n")
cat("Median Sepal Length:", median_sepal_length, "\n")
cat("Variance Sepal Length:", variance_sepal_length, "\n")
correlation_matrix <- cor(iris[, 1:4])
print(correlation_matrix)
boxplot(iris[, 1:4], main = "Iris Boxplots", xlab = "Variables", ylab = "Measurement")
