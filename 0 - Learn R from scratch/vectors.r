vector('numeric', 5) # numeric vector with 0 at every index

vector('complex', 5) # complex vector with 0+0i at every index

vector('logical', 5) # logical vector with FALSE at every index

vector('character', 5) # character vector with "" at every index

myNumericVector <- vector('numeric', 5)
typeof(myNumericVector)
length(myNumericVector)

# Creating vectors by concatenation
myRealNumericVector <- c(1, 2, 3, 4)
typeof(myRealNumericVector)
class(myRealNumericVector)

myDecimalNumericVector <- c(0.1, 0.2, 0.3, 0.4)

myLogicalVector <- c(TRUE, FALSE)

myCharacterVector <- c('a', 'b', 'c')

myIntegerVector <- 1:10

myComplexVector <- c(1+1i, 2+2i)

# Vector with just one value
myVector <- 5
is.vector(myVector)
length(myVector)

# Converting vectors to string
myVectorStrings <- c('learning','is', 'fun')

# The collapse parameter specifies the character to be used between
# ... individual vector elements

paste(myVectorStrings, collapse = ',') 

# Inserting elments in a Vector

# By using c() we can concatenate two vectors, in addition to inserting
# ... a number into a vector. 

myVector <- c(1, 2, 3, 4)
cat("Original Vector: ")
print(myVector)

myVector <- c(0, myVector)
cat("Appending 0 at the start of the vector: ")
print(myVector)

myVector <- c(myVector, 5)
cat("Appending 5 at the end of the vector: ")
print(myVector)

tempVector <- c(6, 7, 8)
myVector <- c(myVector, tempVector)
cat("Appending another vector at the end of the original vector: ")
print(myVector)

# Accessing and modifying vectors
# vectorName[<index>]
# Indexings starts ate 1, which means that the first elements of the vector is at index 1
myVector <- c(0, 1, 2, 3)
myVector[1] <- 5
print(myVector[1])
