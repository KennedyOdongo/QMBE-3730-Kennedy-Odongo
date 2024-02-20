library(dplyr)

# The data set is a dataset of four price categories for mobile phone devices based on its features. 

### Read in data
mobile_phone_prices<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")

#column names
ls(mobile_phone_prices)

#dimensions of the data set -rows, columns
dim(mobile_phone_prices) ## 2000 rows, 21 columns

## Check data types in R columns
# Sapply takes in a list as a parameter, applies the function elementwise to that list  and returns its output
sapply(mobile_phone_prices, class)

#Missing values 
is.na(mobile_phone_prices)

#Total number of missing values in data set
sum(is.na(mobile_phone_prices))

#Location of missing values in the data set 
which(is.na(mobile_phone_prices))

#plot data
plot(mobile_phone_prices$battery_power)


