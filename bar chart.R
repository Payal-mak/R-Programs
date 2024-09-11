# Data (number of fruits)
fruits <- c(20, 35, 12, 4)
fruit_names <- c("Apples", "Bananas", "Oranges", "Grapes")

# Create the bar chart with a custom color palette
barplot(fruits, names.arg = fruit_names, main = "Fruit Basket",
        col = c("lightblue", "pink", "orange", "purple"))
