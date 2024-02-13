## Basic Data Structures

### 1. Vectors

#Vectors are the simplest and most common data structure in R. 
#They are a sequence of data elements of the same basic type. 
#Types include logical, integer, double (numeric), complex, character, and raw.

#### Creating Vectors

Vectors can be created using the `c()` function, which stands for concatenate or combine.

# Numeric vector
num_vector <- c(1, 2, 5, 7)

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

Matrices can be created using the `matrix()` function.


# Create a matrix with 3 rows and 2 columns
my_matrix <- matrix(1:6, nrow = 3, ncol = 2)
my_matrix

#### Operations on Matrices

#You can perform arithmetic operations on matrices, as well as access specific elements, 
#rows, or columns.

# Access the element in the 2nd row, 1st column
my_matrix[2, 1]

### 3. Arrays

Arrays are similar to matrices but can have more than two dimensions. 

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
