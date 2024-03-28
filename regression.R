# Install the required packages
install.packages("rpart")
install.packages("rpart.plot")

# Load the packages
library(rpart)
library(rpart.plot)

# Create a synthetic dataset
set.seed(123)
data <- data.frame(
  X1 = rnorm(100),
  X2 = rnorm(100),
  Y = 2*X1 - 3*X2 + rnorm(100)
)

# Split the dataset into training and testing sets
set.seed(456)  # For reproducibility
sample_indices <- sample(1:nrow(data), nrow(data) * 0.7)  # 70% for training
train_data <- data[sample_indices, ]
test_data <- data[-sample_indices, ]

# Build the decision tree model
tree_model <- rpart(Y ~ X1 + X2, data = train_data)

# Visualize the decision tree
prp(tree_model)

# Evaluate the model on the testing data
predictions <- predict(tree_model, test_data)
actual_values <- test_data$Y

# Calculate Mean Squared Error (MSE) as a measure of model performance
mse <- mean((predictions - actual_values)^2)
cat("Mean Squared Error (MSE):", mse, "\n")

# Make predictions on new data
new_data <- data.frame(X1 = 1.5, X2 = 2.0)
new_predictions <- predict(tree_model, new_data)
cat("Predicted Y for new data:", new_predictions, "\n")
