library(dplyr)


### Read in data
mobile_phone_prices<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")

#column names
ls(mobile_phone_prices)

#dimensions of the data set -rows, columns
dim(mobile_phone_prices) ## 2000 rows, 21 columns

## Check data types in R columns
# Sapply takes in a list as a parameter, applies the function elementwise to that list  and returns its output
sapply(mobile_phone_prices, class)

#Missing values in R
is.na(mobile_phone_prices)

#Total number of missing values in R
sum(is.na(mobile_phone_prices))

#Location of missing values in R
which(is.na(mobile_phone_prices))
