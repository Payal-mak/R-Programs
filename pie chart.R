# Sample data (replace with your data)
slices <- c(15, 20, 35, 10)
labels <- c("Porsche", "Rolls Royce", "Ferrari", "Lexus")

# Create the pie chart
pie(slices, labels = labels, main = "Pie Chart Title", col = rainbow(length(slices)))
