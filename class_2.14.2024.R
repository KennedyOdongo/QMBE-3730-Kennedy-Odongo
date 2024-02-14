## DATA TYPES

## Basic Data Types in R

### 1. Numeric

#Numeric is the default computational data type in R, used for real numbers. 
#This type includes both decimal and integer values, 
#though R internally treats all numbers as floating-point values unless specifically 
#defined as integers.

#### Example
a <- 5.5
b <- 2
class(a) # "numeric"
class(b) # "numeric"


### 2. Integer

#Integer data type is used for whole numbers. 
#To explicitly define an integer in R, use the `L` suffix.

#### Example
a <- 5L
class(a) # "integer"


### 3. Complex

#Complex data types are used for complex numbers, 
#which have both real and imaginary parts.

#### Example
a <- 3 + 4i
class(a) # "complex"

### 4. Logical

#Logical data type represents boolean values: TRUE or FALSE. 
#It is often the result of conditions or logical operations.

#### Example

a <- TRUE
b <- 5<2
class(a) # "logical"
class(b) # "logical", because 5 > 2 is TRUE

### 5. Character

#Character data type is used for text or string data. 
#It includes any data enclosed in quotes.

#### Example
a <- "Hello, R!"
class(a) # "character"

### 6. Factors

#Factors are used to handle categorical data and can be ordered or unordered. 
#They are particularly useful in statistical modeling for representing categorical variables.

gender <- factor(c("male", "female", "female", "male"))
class(gender) # "factor"

## Special Data Types

### Missing Values

# R uses `NA` to represent missing or undefined data. 
#It is important to handle `NA` values in data analysis to avoid incorrect calculations or analysis.

#### Example

a <- c(1, NA, 3)
sum(a) # NA

### Infinite Values

#R represents infinite values with `Inf` for positive infinity and `-Inf` for negative infinity. 
#These can result from mathematical operations like division by zero.

#### Example
a <- 1 / 0
a
b <- -1 / 0

## Data Type Conversion

#R provides functions to convert between data types, such as `as.numeric()`, 
#`as.integer()`, `as.character()`, etc.

#### Example
a <- "100"
class(a)
b <- as.numeric(a)
class(b) # "numeric"


## DATA STRUCTURES

### 1. Vectors

#Vectors are the simplest and most common data structure in R. 
#They are a sequence of data elements of the same basic type. 
#Types include logical, integer, double (numeric), complex, character, and raw.

#### Creating Vectors

#Vectors can be created using the `c()` function, which stands for concatenate or combine.

# Numeric vector
num_vector <-c(1, 2, 5, 7) #<-
num_vector
# Character vector
char_vector <- c("a", "b", "c", "d")

# Logical vector
log_vector <- c(TRUE, FALSE, TRUE, FALSE)


#### Operations on Vectors

#Vectors support various operations, including arithmetic operations and logical operations, 
#which are applied element-wise.


num_vector * 2
# [1]  2  4 10 14

log_vector & c(TRUE, TRUE, FALSE, FALSE)
# [1]  TRUE FALSE FALSE FALSE


### 2. Matrices

#Matrices are two-dimensional, rectangular data structures that can store data of a single basic type.

#### Creating Matrices

#Matrices can be created using the `matrix()` function.


# Create a matrix with 3 rows and 2 columns
my_matrix <- matrix(1:6, nrow = 3, ncol = 2)
my_matrix

#### Operations on Matrices

#You can perform arithmetic operations on matrices, as well as access specific elements, 
#rows, or columns.

# Access the element in the 2nd row, 1st column
my_matrix[2, 1]

### 3. Arrays

#Arrays are similar to matrices but can have more than two dimensions. 

#### Creating Arrays

#Arrays can be created using the `array()` function.

# Create an array with dimensions 3x3x2
my_array <- array(1:18, dim = c(3, 3, 2))
my_array 
### 4. Data Frames

#Data frames are used to store tabular data. 
#They are similar to matrices but can contain different types of data in each column.

#### Creating Data Frames

#Data frames can be created using the `data.frame()` function.

# Create a data frame
df <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                 Age = c(25, 30, 35),
                 Salary = c(50000, 60000, 70000))
df

#### Manipulating Data Frames

#Data frames can be manipulated in various ways, including adding or removing rows or columns, 
#and filtering data.


# Filter data frame for individuals older than 30
subset(df, Age > 30)

### 5. Lists

#Lists are R's data structure for storing collections of objects. 
#Lists can contain elements of different types, including vectors, matrices, and even other lists.

#### Creating Lists

#Lists can be created using the `list()` function.

# Create a list
my_list <- list(Name = "Alice", Age = 25, Salaries = c(50000, 52000, 54000))

## Advanced Data Structure: Factors

#Factors are used to represent categorical data and can be ordered or unordered. 
#They are useful in statistical modeling.

#### Creating Factors

#Factors can be created using the `factor()` function.


gender <- factor(c("male", "female", "female", "male"))
gender

#Random number generation

#seq(from, to, by, length.out, along.with)

seq(4,12)

# runif(n, min = 0, max = 1)

runif(100, 0,6)

#rnorm(n, mean = 0, sd = 1)
rnorm(100, mean = 0, sd = 1)
