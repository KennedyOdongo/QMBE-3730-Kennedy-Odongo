library(dplyr)

# The data set is a dataset of four price categories for mobile phone devices based on its features. 

### Read in data
mobile_phone_prices<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")

#Column names
ls(mobile_phone_prices) # Columns in the data-> code book.

#Dimensions of the data set -rows, columns
dim(mobile_phone_prices) ## 2000 rows, 21 columns

#Summarize statistics data
summary(mobile_phone_prices)

#Summary statistics for categorical columns
table(mobile_phone_prices$bluetooth)
table(mobile_phone_prices$touch_screen)

# For categorical data, you should always check for the proportion of the categories in the data 
prop.table(table(mobile_phone_prices$touch_screen))
prop.table(table(mobile_phone_prices$bluetooth))

# Check data types in R columns
# Sapply takes in a list as a parameter, applies the function elementwise to that list  and returns its output
sapply(mobile_phone_prices, class)

# Missing values 
is.na(mobile_phone_prices)

# Total number of missing values in data set
sum(is.na(mobile_phone_prices))

#Location of missing values in the data set 
which(is.na(mobile_phone_prices))

#Plot data
plot(mobile_phone_prices$battery_power, type ='l')




