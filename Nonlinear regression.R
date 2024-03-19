library(lmtest)
library(sandwich)
library(tidyverse)
library(dplyr)
library(modelr)
library(broom)
library(ggplot2)
library(car)
library(readxl)

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

# Interaction terms
model3<-lm(Median_House_Value~Median_Income*Tot_Rooms, data = training_set)
summary(model3)


#Ln transformation
plot(df$Median_House_Value)
plot(log10(df$Median_House_Value))



#Housing data from Canvas course space
df1<-read_xlsx("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/housing.xlsx")

#Log transformations can be used to deal with outliers. 
plot(df1$price)

#Log transforms also help standardize the scale across variables. 
plot(log10(df1$price))


#Plot distribution

h<-hist(df1$price, breaks=10, col="red", xlab="Price",
        main="Histogram with Normal Curve")
xfit<-seq(min(df1$price),max(df1$price),length=40)
yfit<-dnorm(xfit,mean=mean(df1$price),sd=sd(df1$price))
yfit <- yfit*diff(h$mids[1:2])*length(df1$price)
lines(xfit, yfit, col="blue", lwd=2)




h<-hist(log10(df1$price), breaks=10, col="red", xlab="Price",
        main="Histogram with Normal Curve")
xfit<-seq(min(log10(df1$price)),max(log10(df1$price)),length=40)
yfit<-dnorm(xfit,mean=mean(log10(df1$price)),sd=sd(log10(df1$price)))
yfit <- yfit*diff(h$mids[1:2])*length(log10(df1$price))
lines(xfit, yfit, col="blue", lwd=2)
