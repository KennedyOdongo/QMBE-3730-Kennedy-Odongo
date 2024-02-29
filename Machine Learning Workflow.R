# Load libraries
library(tidyverse)
library(dplyr)
library(modelr)
library(broom)

# Read in Data
df<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/California_Houses.csv")
dim(df)

# Separate into training and testing sets: 70% of data is the training set (used to estimate/fit the model)
# 30% is the test set used to measure model perfomance. 


test_set<-dplyr::sample_frac(df, 0.3)
training_set<-filter(df, !(row.names(df)%in% row.names(test_set)))

# check that the training and test set equal the total number of obervations in the original data set
dim(test_set)+dim(training_set)

#Exploratory data analysis on the training set
cor(training_set) # correlation analysis on the training set

#Column names
ls(df) # Columns in the data-> code book.

#Dimensions of the data set -rows, columns
dim(training_set) 

#Summarize statistics data
summary(training_set)

sapply(training_set, class)

#Variance 
sapply(training_set, var)

sapply(training_set,plot)

# Missing values 
is.na(training_set)

# Total number of missing values in data set
sum(is.na(training_set))

#Location of missing values in the data set 
which(is.na(training_set))

#Plot data
plot(df$Median_House_Value, type ='l')



#Fit model on the training set
model1<-lm(Median_House_Value~., data = training_set)

# See full model output
summary(model1)

#coefficients with tests
tidy(model1)

#Goodness-of-fit measures
glance(model1)

sigma(model1)

rsquare(model1, df)

#confidence intervals
confint(model1, level=  0.95)
