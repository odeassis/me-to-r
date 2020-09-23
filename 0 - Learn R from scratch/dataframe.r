# Creating Data Frames
myDataFrame <- data.frame(foo = c(10, 20, 30, 40, 50), bar = c(T, F, T, F, T))
print(myDataFrame)
cat("Number of rows: ", nrow(myDataFrame), "\n")
cat("Number of colums: ", ncol(myDataFrame), "\n")

# Create name, address, phonenumber and gender variables
name <- c("Alex", "Brian", "Charles")
address <- c("California", "NewYork", "Boston")
phonenumber <- c(492092033, 123840334, 943903403)
gender <- c('F', 'M', 'M')

employeeDataFrame <- data.frame(name, address, phonenumber, gender)
print(employeeDataFrame)
# cat(employeeDataFrame) eror!!

# Accessing and manipulating data frames
employeeDataFrame[1,3]

# Accessing the second row
employeeDataFrame[2, ]

# Accessing the third column
employeeDataFrame[,3]

# Accessing name and phone numbers of employees
employeeDataFrame[, c('name', 'phonenumber')]

# Accessing names of employees using $
# <source>$<nameOfColumn>
employeeDataFrame$name
employeeDataFrame$phonenumber

# Merging two data frames
# Syntax of merge()

# merge(x, y, by.x, by.y, sort = TRUE)
# Here the parameters x and y are the two data frames that we want to merge
# by.x and by.y provide the specifications of the columns through which merging will take place
# sort parameter tells whether the result should be sorted on the specified column

name <- c("Alex", "Brian", "Charles")
address <- c("California", "NewYork", "Boston")
phonenumber <- c(492092033, 123840334, 943903403)
gender <- c('F', 'M', 'M')

employeeDataFrame <- data.frame(name, address, phonenumber, gender)

idNum <- c(11, 22, 33)
employeeCardNumber <- data.frame(name, idNum)

merge(employeeCardNumber, employeeDataFrame)

# Mergin two data frames with a column having same name
myKey <- c("Alphabet a", "Alphabet b", "Alphabet c")
smallLetter <- c("a", "b", "c")
smallAlphabet <- data.frame(myKey, smallLetter)

myNewKey <- c("Alphabet a", "Alphabet b", "Alphabet c")
capitalLetter <- c("A", "B", "C")
capitalAlphabet <- data.frame(myNewKey, capitalLetter)

merge(smallAlphabet, capitalAlphabet, by.x = "myKey", by.y = "myNewKey")