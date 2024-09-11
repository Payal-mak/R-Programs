#Data Structures
#A vector is an ordered collection of basic data types of a given length.
# Vectors are one-dimensional data structures.
X = c(1, 3, 5, 7, 8)
print(X)

#A list is a generic object consisting of an ordered collection of objects.
#Lists are heterogeneous data structures.
#A list can be a list of vectors, list of matrices, a list of characters and a list of functions and so on.
name = c("Payal","Shivani","Tanvi")
class = c("A","A","B")
rollno = c(57,48,51)
friendlist = list(name,class,rollno)
print(friendlist)

data_list <- list("red",1,TRUE)
print(data_list)
data_list[2] <- NULL 
print(data_list)

data_list <- list("red",1,TRUE)
print(data_list)
data_list[-2]
print(data_list)


names = list(name = "a", year = 1995, class = 324)
print(names["name"])
print(names$name)

#Dataframes are generic data objects of R which are used to store the tabular data. 
# These are lists of vectors of equal lengths. 



barplot(airquality$Ozone, 
        main = 'Ozone Concenteration in air', 
        xlab = 'ozone levels', horiz = TRUE)

