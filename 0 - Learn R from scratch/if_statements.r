# Conditional statement is safisfied
x <- 5
# Codition for checking positive number (all positive numbers are greater than 0 )
if (x > 0) {
  print("Positive number")
}

myVector <- c(1, 2, 3, 5)
testNumber <- 4

if(!testNumber %in% myVector) {
  print("Not Found!")
}