# Load the Iris dataset (it's built into R)
data(iris)

# Pair plot for bivariate analysis
pairs(iris[, 1:4], col = iris$Species, pch = 19, 
      main = "Pair Plot of Iris Dataset")

# Scatterplot matrix for sepal length and sepal width
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 19, col = iris$Species,
     main = "Scatterplot: Sepal Length vs Sepal Width", 
     xlab = "Sepal Length", ylab = "Sepal Width")

# Scatterplot matrix for petal length and petal width
plot(iris$Petal.Length, iris$Petal.Width, pch = 19, col = iris$Species,
     main = "Scatterplot: Petal Length vs Petal Width", 
     xlab = "Petal Length", ylab = "Petal Width")
