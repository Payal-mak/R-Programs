#program 1 
{
  n = as.numeric(readline(prompt = "enter a number : "))
  if(n > 0)  {
    print("number is positive")
  }else if(n < 0)  {
    print("number is negative")
  }else  {
    print("number is zero")
  }
}

#program 2 
{
  n1 = as.numeric(readline(prompt = "enter first number : "))
  n2 = as.numeric(readline(prompt = "enter second number : "))
  if(n1 > n2)  {
    print("first number is maximum")
  }else  {
    print("second number is maximum")
  }
}

#program 3
{
  n1 = as.numeric(readline(prompt = "enter first number : "))
  n2 = as.numeric(readline(prompt = "enter second number : "))
  if(n1 < n2)  {
    print("first number is minimum")
  }else  {
    print("second number is minimum")
  }
}

#program 4
{
  n1 = as.numeric(readline(prompt = "enter first number : "))
  n2 = as.numeric(readline(prompt = "enter second number : "))
  n3 = as.numeric(readline(prompt = "enter third number : "))
  max = n1
  if(max < n2)  {
    max = n2
  }else if(max < n3){
    max = n3
  }
  cat("maximum is : ", max)
}

#program 5

{
  n1 = as.numeric(readline(prompt = "enter first number : "))
  n2 = as.numeric(readline(prompt = "enter second number : "))
  cat("first is : ", n1)
  cat("\nsecond is : ", n2)
  temp = n2
  n2 = n1
  n1 = temp
  cat("\nfirst is : ", n1)
  cat("\nsecond is : ", n2)
}

