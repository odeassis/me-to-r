x <- 5
if (x > 0 ){
  print("Positive Number")
} else {
  print("Negative Number")
}

myVector <- c(1, 2, 3, 5)
testNumber <- 4

if(!testNumber %in% myVector) {
  print("Not Found!")
} else {
  print("Found")
}

# Nested if...else statement.
age <- 22
validId <- TRUE

if(age >= 18){
  if(validId){
    cat("Voting is allowed")
  } else {
    cat("Voting not allowed")
  }
} else {
  cat("Voting not allowed")
}