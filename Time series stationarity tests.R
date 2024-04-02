library(tseries)
data<-read.csv("C:/Users/rodge/Downloads/daily-minimum-temperatures.csv")


data_ts<- as.numeric(data$daily_minimum_tempretaures)

diff_1_data <- diff(data_ts, differences = 1)
diff_1_data

plot(data_ts, type="l")

plot(diff_1_data, type="l")


kpss.test(data$daily_minimum_tempretaures, null="Trend")

(data$daily_minimum_tempretaures)
