df<-data.frame(
  name=c('a','b','c','d','e'),
  age=c(12,13,14,15,16),
  marks=c(100,99,88,77,66)
)
print(df)
str(df)
summary(df)
print(df $ age)
df $ gender<-c('m','m','m','m','m')
v<-df
print(v)

library(iris.data)
data(iris)
df<-read.csv('"Z:/CSV folder/iris.data.csv"')


library(data.table)
myDataset <- read.csv("Z:/CSV folder/iris.csv")
print(myDataset)



