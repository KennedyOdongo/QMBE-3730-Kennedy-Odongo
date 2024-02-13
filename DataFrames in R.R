## DATA FRAMES IN R

## What are Data Frames?

#Data frames are a special type of list where every element (column) has the same length.
#Unlike matrices, which can only contain one data type, data frames can hold heterogeneous data types. 
#This makes data frames extremely flexible for data analysis tasks.

## Creating Data Frames

#You can create data frames using the `data.frame()` function. 
#Each argument to this function becomes a column in the data frame.

### Example:

# Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Salary = c(50000, 60000, 70000),
  stringsAsFactors = FALSE  # Ensures character data is not converted to factors (useful in R versions before 4.0.0)
)

print(df)


## Accessing Data Frame Elements

#Elements in a data frame can be accessed using the `$` operator, by using the column name, or with the `[,]` notation.

### Example:

# Access the 'Age' column
df$Age

# Access the first row
df[1, ]

# Access the 'Name' column using the column number
df[, 1]

## Manipulating Data Frames

#R provides numerous functions and packages for manipulating data frames, 
#including `subset()`, `merge()`, `dplyr` package functions like `filter()`, 
#`select()`, and `mutate()`.

### Filtering Rows
# Filter rows where Age is greater than 30
subset(df, Age > 30)

### Selecting Columns
# Select only the Name and Salary columns
df[, c("Name", "Salary")]

### Adding Columns

# Add a new column
df$Department <- c("HR", "Tech", "Marketing")

### Removing Columns
# Remove the Department column
df$Department <- NULL


## Aggregating Data

#The `aggregate()` function is used for computing summary statistics of variables in the data frame.

### Example:
# Compute the average salary by department
aggregate(df$Salary, by = list(df$Department), FUN = mean)

## Data Frame Operations with `dplyr`

#`dplyr` is a part of the tidyverse suite of packages and provides a coherent set of verbs for data manipulation.

### Example:
library(dplyr)

# Filter rows
filtered_df <- filter(df, Age > 30)

# Select columns
selected_df <- select(df, Name, Salary)

# Arrange rows
arranged_df <- arrange(df, desc(Salary))

# Mutate to add new columns
mutated_df <- mutate(df, MonthlySalary = Salary / 12)


# set working directory and read file from directory
setwd("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo")
read.csv("mobile_phone_prices.csv")


#read file directly
read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")
