n<-as.integer(readline(prompt="enter value"))
me<-function(n){
  
sum_of_n=0
count<-1
while(count<=n)
{
  sum_of_n<-sum_of_n+count^2
  count<-count+1
}
}
print(paste("sum is",sum_of_n))