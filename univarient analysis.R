# Load the Iris dataset (it's included in R)
data(iris)

# Summary statistics for each numeric variable
summary(iris[, 1:4])

# Histograms for Sepal Length
hist(iris$Sepal.Length, main = "Histogram of Sepal Length", xlab = "Sepal Length")

# Histograms for Sepal Width
hist(iris$Sepal.Width, main = "Histogram of Sepal Width", xlab = "Sepal Width")

# Histograms for Petal Length
hist(iris$Petal.Length, main = "Histogram of Petal Length", xlab = "Petal Length")

# Histograms for Petal Width
hist(iris$Petal.Width, main = "Histogram of Petal Width", xlab = "Petal Width")

# Box plots for each numeric variable
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length, main = "Boxplot of Sepal Length")
boxplot(iris$Sepal.Width, main = "Boxplot of Sepal Width")
boxplot(iris$Petal.Length, main = "Boxplot of Petal Length")
boxplot(iris$Petal.Width, main = "Boxplot of Petal Width")
