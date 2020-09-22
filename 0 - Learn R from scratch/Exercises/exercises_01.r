# Problem Statement
# Use a fuction that checjs whether the testVariable is recursive or not.
testVariable <- list(1, 1+1i, 'a', TRUE)
print(is.recursive(testVariable))

testVariable <- c(1, 2, 3, 4)
print(is.recursive(testVariable))


# Create a 3x3 character array. Populate it with the fist 9 latters.
# .. Then print the array on the console.
myCharacterVector <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')
myArray <- array(myCharacterVector, dim = c(3, 3, 1))
print(myArray)