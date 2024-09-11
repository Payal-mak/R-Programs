# Post Lab 4
# Question.1
value <- readline(prompt = "Enter a value: ")
value <- as.numeric(value)
if (value < 0) {
  print(paste(value, "is less than zero."))
} else if (value == 0) {
  print(paste(value, "is equal to zero."))
} else {
  print(paste(value, "is greater than zero."))
}

# Question.2

num1 <- readline(prompt = "Enter first number: ")
num1 <- as.numeric(num1)
num2 <- readline(prompt = "Enter second number: ")
num2 <- as.numeric(num2)
if (num1 > num2) {
  max_number <- num1
  print(paste(num1, "is the maximum number."))
} else {
  max_number <- num2
  print(paste(num2, "is the maximum number."))
}

# Question.3

A <- readline(prompt = "Enter first number: ")
A <- as.numeric(A)
B <- readline(prompt = "Enter second number: ")
B <- as.numeric(B)
if (A < B) {
  min_number <- A
  print(paste(A, "is the minimum number."))
} else {
  min_number <- B
  print(paste(B, "is the minimum number."))
}

#Question.4


number1 <- readline(prompt = "Enter first number: ")
number1 <- as.numeric(number1)
number2 <- readline(prompt = "Enter second number: ")
number2 <- as.numeric(number2)
number3 <- readline(prompt = "Enter third number: ")
number3 <- as.numeric(number3)
maxx_number <- number1
if (number2 > maxx_number) {
  maxx_number <- number2
}
if (number3 > maxx_number) {
  maxx_number <- number3
}
print(paste(maxx_number, "is the maximum number."))

# Question.5

x <- 10
y <- 20
temp <- x
x <- y
y <- temp

print(paste("x after swap:", x))
print(paste("y after swap:", y))

# Question.6

number <- readline(prompt = "Enter a number: ")
number <- as.numeric(number)
if (number %% 2 == 0) {
  print(paste(number, "is even."))
} else if (number %% 2 == 1) {
  print(paste(number, "is odd."))
} else {
  print("The input is not a valid number.")
}

# Question.7


ch <- readline(prompt = "Enter a character in lowercase: ")[1]
uppercase_char <- toupper(tolower(ch))
print(paste("Uppercase character:", uppercase_char))

# Question.8

chr <- readline(prompt = "Enter a character: ")[1]
chr <- tolower(chr)
if (chr %in% c("a", "e", "i", "o", "u")) {
  print(paste(chr, "is a vowel."))
} else {
  print(paste(chr, "is a consonant."))
}

# Question.9

value1 <- readline(prompt = "Enter first number: ")
value2 <- readline(prompt = "Enter second number: ")
value1 <- as.numeric(value1)
value2 <- as.numeric(value2)
sum <- value1 + value2
difference <- value1 - value2
product <- value1 * value2
if (value2 != 0) {
  quotient <- value1 / value2
  print(paste("Division:", quotient))
} else {
  print("Division by zero is not allowed.")
}
print(paste("Addition:", sum))
print(paste("Subtraction:", difference))
print(paste("Multiplication:", product))

# Question.10

sub1_marks <- readline(prompt = "Enter marks for subject 1: ")
sub2_marks <- readline(prompt = "Enter marks for subject 2: ")
sub3_marks <- readline(prompt = "Enter marks for subject 3: ")
sub4_marks <- readline(prompt = "Enter marks for subject 4: ")
sub5_marks <- readline(prompt = "Enter marks for subject 5: ")
sub1_marks <- as.numeric(sub1_marks)
sub2_marks <- as.numeric(sub2_marks)
sub3_marks <- as.numeric(sub3_marks)
sub4_marks <- as.numeric(sub4_marks)
sub5_marks <- as.numeric(sub5_marks)
total_marks <- sub1_marks + sub2_marks + sub3_marks + sub4_marks + sub5_marks
percentage <- (total_marks / 500) * 100
print(paste("Total marks:", total_marks))
print(paste("Percentage:", percentage, "%"))
if (percentage >= 70) {
  print("Grade: DISTINCTION")
} else if (percentage >= 60) {
  print("Grade: FIRST CLASS")
} else if (percentage >= 50) {
  print("Grade: SECOND CLASS")
} else if (percentage >= 40) {
  print("Grade: PASS CLASS")
} else {
  print("Grade: FAIL")
}

