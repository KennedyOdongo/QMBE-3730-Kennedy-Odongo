library(tseries)
library(forecast)
library(dplyr)
library(Metrics)


data<-read.csv("C:/Users/rodge/Downloads/daily-minimum-temperatures.csv")

# Sort data from oldest data to the most recent date

ls(data)

data<-data[order(as.Date(data$date, format="%m/%d/%Y")),]


#Timeseries stationary so we do not need to difference the data -> ARMA model
data<-as.numeric(data$daily_minimum_tempretaures) 
data<-na.omit(data)

data<-data.frame(data)

ls(data)

# Split Data into training and test sets
dim_data<-dim(data)

len_train<-ceiling((0.7*dim_data[1])) # Use Ceiling function to round up to the nearest whole number
len_train
# We do not sample a random test and training set for time series data. We select these sets sequentially
training_set=data$data[1:len_train]
test_set=data$data[(len_train+1):dim_data[1]]


dim(data.frame(training_set))
dim(data.frame(test_set))

## Plot training set
plot(training_set, type="l",xlab = "Number of days since 1/1/1981", ylab="daily average temperature")

## Test for stationarity
kpss.test(training_set)
adf.test(training_set)

#Determine AR terms needed
pacf(training_set)


#Determine MA terms needed
acf(training_set)


### Fit the ARMA model
arimaModel=arima(training_set, order=c(9,0,9)) # You set this numbers based on the significant AR and MA terms from your PACF
#and ACF plots

print(arimaModel)


# Create forecasts. Should be the same length as the test set
forecast=predict(arimaModel_1, (dim(data.frame(test_set))[1]))

dim(data.frame(forecast)[1]) # Same length as test set

# Use error metrics to test to determine the accuracy of your model
rmse(test_set,forecast$pred)
mae(test_set,forecast$pred)
mse(test_set,forecast$pred)
mape(test_set,forecast$pred)


# We can also use the Auto Arima function that automatically determines the AR and MA orders for you
AutoArimaModel=auto.arima(training_set)
AutoArimaModel
