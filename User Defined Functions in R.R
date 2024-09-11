#Program - 2
#User Defined Function with Arguments
#Create a function to print squares of numbers in sequence
new.function <- function(a){
  for (i in 1:a){
    b <- i*2
    print(b)
  }
}
#Call the function new.function supplying 6 as an argument
new.function(6)

#Program - 3
#User Defined Function without Arguments
new.function <- function(){
  for (i in 1:5){
    print(i^2)
  }
}
#Call the function new.function supplying no argument
new.function()

#Program - 4
#Create a function with arguments
new.function <- function(a,b,c){
  result <- a*b+c
  print(result)
}

#Program - 5
#Call the function by position of arguments
new.function(5,3,11)
new.function <- function(a,b,c){
  result <- a*b+c
  print(result)
}
#Call the function by names of the arguments
new.function(b = 5, a = 11, c = 3)


#Program - 6
#Create a function with arguments
new.function <- function(a = 3, b = 6){
  result <- a*b
  print(result)
}

#Call the function without giving any argument
new.function()

#Call the function with giving new values of the arguments
new.function(9,5)

#Program - 7
#Lazy evaluation of functions
new.function <- function(a,b){
  print(a^2)
  print(a)
  print(b)
}

#Evaluate the function without supplying
new.function(6)










