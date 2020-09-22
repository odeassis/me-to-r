# Creating arrays
# In R, arrays can be create using the array() keyword. 
# Inputs to array() include concatenated vectors an the dim for creating an array

# Systax for creating arrays
# array(<dataVerctors>, dim = <vectorOfDimensions>)

myVector <- c(1, 2, 3) # create a vector
myArray3x1 <- array(myVector, dim = c(3, 1))
print(myArray3x1)

myArray1x3 <- array(myVector, dim = c(1, 3))
print(myArray1x2)

myArray2x2 <- array(myVector, dim = c(2,2))
print(myArray2x2)

myVector1 <- c(1, 2, 3)
myVector2 <- c(4, 5, 6)
myVector3 <- c(7, 8, 9)

myArray3x3x2 <- array(c(myVector1, myVector2, myVector3), dim = c(3, 3, 2))
# First argument is the number of rows, the second argument is the number of 
# ... columns and the third argument is the number of matrices.
print(myArray3x3)

# Accessing and modifying arrays
myVector1 <- c(1, 2, 3)
myVector2 <- c(4, 5, 6, 7, 8, 9)

myArray <- array(c(myVector1, myVector2), dim = c(3, 3, 3))

# Accessing the element located at row 1, column 1 in the first matrix
print(myArray[1, 1, 1])

# Accessing the element located at row 2, column 3 in the second matrix
print(myArray[2, 3, 2])

# We can access an element based on a single index as well. 
# ...R language uses column major order which means if only a single 
# ...index is used to access an array, then the first nn indexes will
# ...belong to the first nn rows of the first column.
myVector <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')
myArray <- array(myVector, dim = c(3, 3))
print(myArray[5])

myArray <- array(myVector, dim = c(3, 3, 2))
print("Original Array: ")
print(myArray)

# Modifying the element located at row 2, column 2 in the second matrix
myArray[2, 2, 2] = "E"
print("Modified Array: ")
print(myArray)

# Modifying the element located at index 14 in the second matrix
myArray[14] = 'E'
print("Modified Array: ")
print(myArray)
