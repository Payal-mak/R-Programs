#Post Lab 2
#Q.1.
speed <- readline(paste("Enter speed in km/h: "))
speed <- as.numeric(speed)
time <- readline(paste("Enter time in hrs: "))
time <- as.numeric(time)
distance <- speed * time
cat("Distance travelled is:", distance, "units.\n")

#Q.2	

weight <- readline(paste("Enter your weight in kg: "))
weight <- as.numeric(weight)
height <- readline(paste("Enter your height in m: "))
height <- as.numeric(height)
bmi <- weight / (height * height)
cat("BMI is:", bmi, "\n")

#Q.3 

c_to_f <- function(celsius) {
  return(celsius * (9/5) + 32)
}
f_to_c <- function(fahrenheit) {
  return((fahrenheit - 32) * (5/9))
}
op <- readline(paste("Enter c for Celsius to Fahrenheit or f for vice versa: "))
temp <- readline(paste("Enter temperature: "))
temp <- as.numeric(temp)
if (op == "c") {
  result <- c_to_f(temp)
  cat(temp, "°C is equal to", result, "°F\n")
} else if (op == "f") {
  result <- f_to_c(temp)
  cat(temp, "°F is equal to", result, "°C\n")
} else {
  cat("Invalid choice. Please enter 'c' or 'f'.\n")
}

#Q.4 

d <- readline(paste("Enter distance traveled (miles): "))
d <- as.numeric(d)
fuel_consumed <- readline(paste("Enter fuel consumed: "))
fuel_consumed <- as.numeric(fuel_consumed)
mpg <- d / fuel_consumed
cat("The fuel efficiency is:", round(mpg, 2), "miles per gallon.\n")

#Q.5 


r <- readline(paste("Enter the radius of the cylinder in cm: "))
r <- as.numeric(r)
h <- readline(paste("Enter the height of the cylinder in cm: "))
h <- as.numeric(h)
volume <- pi * r^2 * h
cat("The volume of the cylinder is:", round(volume, 2), "cubic centimeters.\n")






