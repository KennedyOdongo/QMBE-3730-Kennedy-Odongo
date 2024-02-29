# Load libraries
library(tidyverse)
library(dplyr)

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
