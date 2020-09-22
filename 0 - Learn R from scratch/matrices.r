# Syntax
# matrix(data, nrow, ncol, byrow, dimnames)

myVector <- c(1, 2, 3, 4)

myMatrix <- matrix(myVector, nrow = 2, ncol = 2);
#myMatrix <- matrix(myVector, nrow = 2, ncol = 2, byrow = TRUE)
print(myMatrix)

# Set the names of rows and columns.
rownames = c('r1', 'r2', 'r3', 'r4')
colnames = c('c2', 'c2', 'c3')
myMatrix <- matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE, dimnames = list(rownames, colnames))
print(myMatrix)

# Acessing and Manipulating Matrices
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)
print(myMatrix[2, 3])

# Acessing using single index
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)
myMatrix[10] = 0
print(myMatrix)
