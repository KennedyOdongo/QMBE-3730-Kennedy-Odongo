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


## 2/23/2024


prop.table(table(mobile_phone_prices$touch_screen, mobile_phone_prices$bluetooth))
# Check data types in R columns
# Sapply takes in a list as a parameter, applies the function elementwise to that list  and returns its output
sapply(mobile_phone_prices, class)

#Variance 
sapply(mobile_phone_prices, var)

sapply(mobile_phone_prices,plot)

# Missing values 
is.na(mobile_phone_prices)

# Total number of missing values in data set
sum(is.na(mobile_phone_prices))

#Location of missing values in the data set 
which(is.na(mobile_phone_prices))

#Plot data
plot(mobile_phone_prices$battery_power, type ='l')


#Dplyr functions.
# Filter rows
bluetooth_phones <- filter(mobile_phone_prices, bluetooth == 1)
bluetooth_phones


#Sort dataframe
sort_by_memory <- arrange(mobile_phone_prices, desc(int_memory))
sort_by_memory

#Creating new columns in a dataframe
mutated_df <- mutate(mobile_phone_prices, power_weight_ratio = battery_power/mobile_weight)
mutated_df$power_weight_ratio


# Choose a set of columns in R
selected_df <- select(mobile_phone_prices, battery_power,four_g,dual_sim)
selected_df

selected_df <- mobile_phone_prices[,1:10]
selected_df






#Visualizations in R
# Basic using the plot function
# https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/plot 


#syntax
#plot(column)
#plot(x, y)


plot(mobile_phone_prices$px_height)

plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,type = 'p', main = "Title", xlab = "phone height",ylab = "phone width")

plot(mobile_phone_prices$px_height,mobile_phone_prices$px_height, type = "l")






library(ggplot2)
