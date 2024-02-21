## DATA FRAMES IN R

## What are Data Frames?

#Data frames are a special type of list where every element (column) has the same length.
#Unlike matrices, which can only contain one data type, data frames can hold heterogeneous data types. 
#This makes data frames extremely flexible for data analysis tasks.

## Creating Data Frames

#You can create data frames using the `data.frame()` function. 
#Each argument to this function becomes a column in the data frame.

a<-5
a_data_frame<-data.frame(a)
class(a_data_frame)


data.fra
### Example:

# Create a simple data frame
df <- data.frame(
Name = c("Alice", "Bob", "Charlie"),
Age = c(25, 30, 35),
Salary = c(50000, 60000, 70000),
stringsAsFactors = FALSE  # Ensures character data is not converted to factors (useful in R versions before 4.0.0)
)


# Viz dataframe
df

View(df)


## Accessing Data Frame Elements

#Elements in a data frame can be accessed using the `$` operator, by using the column name, or with the `[,]` notation.

### Example:

##See all columns in a dataframe

ls(df)

# Access the 'Age' column
df$Age

df$Salary


# df[row(s),column(s)]

# Access the first row
df[1, ]


#First row column 1 and 2
df[1,1:2]



# Access the 'Name' column using the column number
df[, 1]

df[1:2,1:2]



## Manipulating Data Frames

#R provides numerous functions and packages for manipulating data frames, 
#including `subset()`, `merge()`, `dplyr` package functions like `filter()`, 
#`select()`, and `mutate()`.

### Filtering Rows
# Filter rows where Age is greater than 30
subset(df, Salary<5000)

### Selecting Columns
# Select only the Name and Salary columns
df[, c("Name", "Salary")]

### Adding Columns

# Add a new column
df$Department <- c("HR", "Tech", "Marketing")

View(df)

### Removing Columns
# Remove the Department column
df_no_dep<- df
View(df_no_dep)

df_no_dep$Department<-NULL


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
filtered_df

# Select columns
selected_df <- select(df, Name, Salary)
selected_df

# Arrange rows
arranged_df <- arrange(df, desc(Salary))

# Mutate to add new columns
mutated_df <- mutate(df, MonthlySalary = Salary / 12) # create a new column. 
mutated_df


getwd()
#getwd returns an absolute filepath representing the current working directory of the R process; 
#setwd(dir) is used to set the working directory to dir


# ABSOLUTE PATH
#An absolute path is the complete route to a file or directory from the system root.

#RELATIVE PATH
#A relative path is the location of a file or directory in relation to the current working directory
