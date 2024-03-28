name<-c("A","B","C")
age<-c(20,19,21)
ph<-c(8096,1735,1234)
df<-data.frame(Name=name,Age=age,phno=ph) 
print(df)


marks<-matrix(c(80,75,90,85,95,
                70,79,86,92,81,
                81,92,86,70,79,
                95,80,90,75,85,
                95,92,86,80,95),nrow=5,byrow = TRUE)
students<-c("A","B","C","D","E")
subjects<-c("maths","r","c","python","java")
df<-data.frame(Student=students,marks)
colnames(df)[2:6]<-subjects
df$Total<-rowSums(df[,-1])
df$Average<-rowMeans(df[,-1])
print(df)



data<-data.frame(name=c("A","B","C"),
                 Age=c(19,21,20),
                 phno=c(80,96,17))
a<-str(data)
print(a)
row<-2
col<-"Age"
value<-data[row,col]
print(value)



employee <- data.frame(
  empID = c(1, 2, 3),
  Name = c("A", "B", "C"),
  dept = c("Sales", "marketing", "finance"),
  salary = c(50000, 45000, 60000),
  experience = c(5, 7, 2)
)

new_employee <- data.frame(empID = 4,Name = "D",dept = "HR",salary = 55000,experience = 3
)
employee <- rbind(employee, new_employee)
employee$empID[2] <- 5
max_salary <- max(employee$salary)
min_salary <- min(employee$salary)
print(max_salary)
print(min_salary)
print(employee)

data(iris)
print(paste("Mean:",mean(iris$Sepal.Length)))
print(paste("Median:",median(iris$Sepal.Length)))
print(paste("variance:",var(iris$Sepal.Length)))
print(paste("standard deviation:",sd(iris$Sepal.Length)))



data <- data.frame(
  Name = c("A", "B", NA),
  Age = c(NA, 19, 23),
  phn = c(NA, NA, 96))
data[] <- lapply(data, as.character)
fill <- replace(data, is.na(data), "0")
print(fill)


# Load the required libraries
library(rpart)
library(rpart.plot)

# Load the Iris dataset
data(iris)

# Build the decision tree model for classification
tree_model <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris, method = "class")

# Save the decision tree plot to a file (e.g., in PNG format)
png("decision_tree.png", width = 800, height = 600)
prp(tree_model)
dev.off()  # Close the PNG device

# Open the saved image in an external image viewer (this command may vary by system)
shell.exec("decision_tree.png")

# Make predictions on new data
new_data <- data.frame(Sepal.Length = 5.1, Sepal.Width = 3.5, Petal.Length = 1.4, Petal.Width = 0.2)
predictions <- predict(tree_model, new_data, type = "class")

cat("Predicted Species:", predictions, "\n")















