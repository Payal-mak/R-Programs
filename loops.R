#loops

#repeat loop
#program 1
v = c("hello", "loops")
flg=2
repeat{
  print(v)
  flg = flg+1
  if(flg>5)  {
    break
  }
}

#program 2
v = c("hello", "loops")
i=1
repeat{
  print(v)
  i = i+2
  if(i>7)  {
    break
  }
}

#program 3
{
  i=1
  x = as.integer(readline("enter value of x: "))
  repeat{
    print(i)
    i = i + 1
    if(i==x){
      print(i)
      break
    }
  }
}

#while loop
#program 1 
v = c("hey", "fellas")
count = 2
while(count < 7)  {
  print(v)
  count = count + 1
}

#program 2
v = c("hello world!!!")
i = 1
while(i < 6)  {
  print(v)
  i = i + 1
}

#program 3
{
  flg=as.integer(readline("iterations : "))
  v = c("Favourite","R")
  i=1
  while(i<=flg){
    print(v)
    i = i+1
  }
}


#for loop
#program 1

for(i in c(-8, 5, 15, 2)) {
  print(i)
}
  

#program 2
v = LETTERS[1 : 27]
for(i in v)  {
  print(i)
}

#program 3 
{
n = as.integer(readline(prompt = "enter iterations : "))
v = LETTERS[1 : n]
for(i in v)  {
  print(i)
}
}


#break statement 
#program 1
v = c(1, 2, 3, 4, 5)
flg=6
repeat{
  print(v)
  flg=flg+1
  if(flg>7)  {
    break
  }
}

#program 2
val = 1:5
x = c("Data Science")
for (val in x) {
  if(val == 3)  {
    break
  }
  print(val)
}




#next statement 

#program 1
v = LETTERS[1:6]
for(i in v)  {
  if(i == "D")  {
    next
  }
  print(i)
}

#program 2
x=1:5
for(val in x)  {
  if(val == 3)  {
    next
  }
  print(val)
}
