#Experiment 4
#IF statement
#Prog - 1
x<-3L
if(is.integer(x)){
  print("x is an integer")
}

#Prog - 2
{
x = as.integer(readline("Enter a value: "))
if(x>0){
  print("the number is positive")
}
print("Outside if statement")
}
#Prog - 3
{
x = as.character(readline("Enter a character: "))
if(x>="a" & x<="z"){
  print("You entered a valid character")
}
}

#IF ELSE Statement
#Prog - 1

x=c("what","is","truth")
if("Truth" %in% x){
  print("Truth is found")
}else{
  print("Truth is not found")
} 



#Prog - 2
{
age<-as.integer(readline("Enter your age: "))
if(age>18){
  print("You are eligible to vote")
}else{
  print("You cannot vote")
}
}

#Prog - 3
{
x<-as.character(readline("enter a character: "))
if(x>="a" & x<="z"){
  print("You entered a valid character")
}else{
  print("Invalid character!")
}
}
