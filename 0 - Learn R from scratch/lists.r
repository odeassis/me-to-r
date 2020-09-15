# A list is basically a vector in which all the elements can br of a different type

# Creating list
# Lists can be created using the list() function
# It works similar to the c() function we saw in the previous lesson.

myList <- list(1, 1+1i, 'a', TRUE)
print(myList)
is.recursive(myList)

# Inserting elements in a List
myList <- c('s', myList)
cat("Appending 's' at the start of thr vector: \n")
print(myList)

# Accesing and modifying lists
print(myList[4])
print(myList[[4]])

myList[[4]] = "vaca"

# Named entries in list
myList <- list(
            integerVar = 1:3,
            numericVar = 0.4,
            characterVar = c('a', 'b')
            )

print(myList['integerVar']) # prints the name as well as the value

print(myList[['integerVar']]) # prints only the value
