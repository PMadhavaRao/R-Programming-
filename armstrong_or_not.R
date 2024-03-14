num<-153
sum=0
temp=num
while(temp>0)
{
  d=temp%%10
  sum=sum+d^3
  temp=temp//10
}
if(num==sum)
{
  print("is armstrog")
}else
{
  print("not a armstong")
}