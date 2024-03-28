# Load the required library
library(rpart)

# Load or create your dataset (for this example, let's use a built-in dataset 'mtcars')
data(mtcars)

# Explore the dataset
head(mtcars)

# Preprocess the data (if necessary)
# You may need to handle missing values, scale/normalize features, or transform variables as needed.

# Split the dataset into features (X) and the target variable (y)
X <- mtcars[, -which(names(mtcars) == "mpg")]  # Features
y <- mtcars$mpg  # Target variable

# Train a decision tree regression model
model <- rpart(y ~ ., data = mtcars, method = "anova")

# Make predictions using the model
predictions <- predict(model, mtcars)

# Evaluate the model's performance
# For regression, common metrics include Mean Absolute Error (MAE) or Mean Squared Error (MSE)
mae <- mean(abs(predictions - mtcars$mpg))
mse <- mean((predictions - mtcars$mpg)^2)

cat("Mean Absolute Error (MAE):", mae, "\n")
cat("Mean Squared Error (MSE):", mse, "\n")
