library(tseries)
data<-read.csv("C:/Users/rodge/Downloads/daily-minimum-temperatures.csv")



plot(data$daily_minimum_tempretaures, type="l")


diff_1_data <- diff(data$daily_minimum_tempretaures, differences = 1)

kpss.test(data$daily_minimum_tempretaures, null="Trend")
