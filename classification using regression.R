# Load the required libraries
library(rpart)

# Create a sample dataset (you can load your own dataset)
# In this example, we'll create a simple dataset.
set.seed(123)
n <- 100
x1 <- runif(n)
x2 <- runif(n)
y <- ifelse(x1 + x2 > 1, "ClassA", "ClassB")

# Create a data frame from the dataset
data <- data.frame(x1 = x1, x2 = x2, y = y)

# Train a decision tree classification model
# Here, we're using the 'rpart' function with the formula notation.
model <- rpart(y ~ x1 + x2, data = data, method = "class")

# Visualize the decision tree (optional)
# You can use the 'rpart.plot' library for visualizing the tree.
# install.packages("rpart.plot")
library(rpart.plot)
rpart.plot(model)

# Make predictions
new_data <- data.frame(x1 = c(0.2, 0.8), x2 = c(0.7, 0.3))  # New data for prediction
predictions <- predict(model, new_data, type = "class")

# Print the predictions
print(predictions)
