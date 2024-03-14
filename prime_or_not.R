prime<-function(n)
{
  c<-0
  for (i in 1:n)
  {
    if (n%%i==0)
    {
       c=c+1
    }
  }
  if(c==2)
  {
    return(paste(n,"is prime"))
  }
}
prime(17)