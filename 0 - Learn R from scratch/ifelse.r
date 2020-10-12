# Syntax
# ifelse (expression, condition1, condition2)

# Here "expression" is an object which can be coerced to logical mode.
# Condition1 is returned for elements that satisfy the expression (return TRUE)
# Condition2 is returned for elements that do not satisfy the expression (return False)

# ! The output of ifelse() function is always a vector! Each element of the 
# ...output vector tells whether the test (expression) passed for that element 
# ...of the input vector. 

x <- c(-5, 5, -2)
# if the expression is satisfied return condition1 else return condition2
ifelse(x > 0, "positive", "negative")
