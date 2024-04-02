library(tseries)
data<-read.csv("C:/Users/rodge/Downloads/daily-minimum-temperatures.csv")

# Convert data to numeric
data_ts<- as.numeric(data$daily_minimum_tempretaures)

#Difference data once
diff_1_data <- diff(data_ts, differences = 1)
diff_1_data

#Difference data twice

diff_2_data <- diff(data_ts, differences = 2)
diff_2_data

#Plot data
plot(data_ts, type="l")

plot(diff_1_data, type="l")

#KPSS test for stationarity

#KPSS test
#KPSS is another test for checking the stationarity of a time series.
#The null and alternate hypothesis for the KPSS test are opposite that of the ADF test.

#Null Hypothesis: The process is trend stationary.(Has no unit root)

#Alternate Hypothesis: The series has a unit root (series is not stationary).

kpss.test(data_ts, null="Trend")

kpss.test(diff_1_data, null="Trend")


#ADF Test

#ADF test is used to determine the presence of unit root in the series,
#and hence helps in understand if the series is stationary or not. 
#The null and alternate hypothesis of this test are:
  
#Null Hypothesis: The series has a unit root (The series is not stationary)

#Alternate Hypothesis: The series has no unit root.(The series is stationary)

#If the null hypothesis in failed to be rejected, this test may provide evidence that the series is non-stationary.

data_ts_no_NA <- na.omit(data_ts)
adf.test(data_ts_no_NA )
