#Create UDF named and which will accept two arguments as an integer from user and it will return sum of them.
add <- function(a,b){
  sum = a+b
  print(sum)
}
a <- readline(paste("Enter first number: "))
a <- as.numeric(a)
b <- readline(paste("Enter second number: "))
b <- as.numeric(b)
sum(a,b)


#Create a UDF which will pass argument as an array(of integer type) and it will return average value.

#Write a function to count simple interest.
