library(ggplot2)
library(dplyr)

data<- read.csv("C:/Users/rodge/Downloads/daily-minimum-temperatures.csv")
ls(data)

plot(data$daily_minimum_tempretaures, type="l", ylab = " temperature")
