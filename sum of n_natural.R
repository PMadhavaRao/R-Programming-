n<-as.integer(readline(prompt="enter"))
summ<-function(n)
{
  sum1<-0
  for (i in 1:n)
  {
    sum1<-sum1+i
  }
  print(sum1)
}
summ(n)
