library(lmtest)
library(sandwich)
library(tidyverse)
library(dplyr)
library(modelr)
library(broom)
library(ggplot2)
library(car)

df<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/California_Houses.csv")
dim(df)

# Test and training set.
test_set<-dplyr::sample_frac(df, 0.3)

training_set<-filter(df, !(row.names(df)%in% row.names(test_set)))

# Fit model

model1<-lm(Median_House_Value~., data = training_set)

ls(training_set)

# Vcov matrix
coeftest(model1, vcov = vcovHC(model1))

#Polynomial regression in R
model2<-lm(Median_House_Value~Median_Income+I(Median_Income^2), data = training_set)
summary(model2)
