library(dplyr)


### Read in data
mobile_phone_prices<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")

#column names
ls(mobile_phone_prices)

#dimensions of the data set -rows, columns
dim(mobile_phone_prices) ## 2000 rows, 21 columns
