# Create a hypothetical dataset
set.seed(123)
data <- data.frame(
  Predictor1 = rnorm(100),
  Predictor2 = rnorm(100),
  Target = 2 * Predictor1 + 3 * Predictor2 + rnorm(100)
)

# Fit a linear regression model
model <- lm(Target ~ Predictor1 + Predictor2, data = data)

# Print model summary
summary(model)
