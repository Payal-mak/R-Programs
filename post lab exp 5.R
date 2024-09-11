#Post Lab 5:-
#Question 1
sum_even <- 0
for (i in 2:200) {
  if (i %% 2 == 0) {
    sum_even <- sum_even + i
  }
}
cat("The sum of the first 100 even numbers is:", sum_even, "\n")

#Question 2
{
  sum=0
  a=0
  b=1
  for (i in 1:10) {
    print(sum)
    sum = a + b
    a = b
    b = sum
  }
}

#Question 3
{
  n=as.numeric(readline(prompt = "Enter number : "))
  fact=1
  for (i in 1:n)
  {
    fact=fact*i
  }
  paste("The factorial of the number is : ",fact)
}
#Question 4
{
  num=as.integer(readline(prompt = "Enter number : "))
  temp=num
  n=nchar(num)
  sum=0
  while(num>0)
  {
    d=num%%10
    sum=sum+(d^3)
    num=num%/%10
  }
  if(sum==temp)
  {
    print("It is armstrong number")
  }
  else
  {
    print("it is not a armstrong number")
  }
}
#Question 5
{
  num=as.integer(readline(prompt = "Enter number : "))
  while(num>0)
  {
    print(num%%10)
    num=num%/%10
  }
}
#Question 6
{
  n=as.numeric(readline(prompt = "Enter Number : "))
  sum=0
  d=nchar(n)
  if(d>3)
  {
    for ( i in 1:d) 
    {
      sum=sum+(n%%10)
      n=n%/%10
    }
    paste("The sum of digits of number is : ",sum)
  }
  else
  {
    print("Enter greater than three digit number.")
  }
}
#Question 7
{
  for( i in 1:5)
  {
    print(1:5)
  }
}
# Question 8
{
  v=LETTERS[1:5]
  for (i in 1:5) 
  {
    for (j in 1:5) 
    {
      cat(v[i])  
    }
    cat("\n")
  }
  
}
