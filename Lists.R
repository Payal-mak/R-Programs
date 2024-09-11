#LIST
#Program - 1
data_list <- list("red",1,TRUE)
print(data_list)

#Program - 2
#Identify the first element of list
data_list <- list("red",1,TRUE)
print(data_list[[1]]) #first element represents whole list, second bracket represents which element we want

#Program - 3
#Updation of list
data_list <- list("red",1,TRUE)
data_list[[4]] <- "new data"
print(data_list)



#Program - 4
#Combining different lists in a single list
name = c("Payal","Shivani","Tanvi")
class = c("A","A","B")
rollno = c(57,48,51)
friendlist = list(name,class,rollno)
print(friendlist)
print(friendlist)

#Program - 5
name = c("Payal","Shivani","Tanvi")
class = c("A","A","B")
rollno = c(57,48,51)
friendlist = list(name,class,rollno)
friendlist[[1]] <- "new data"
print(friendlist)



