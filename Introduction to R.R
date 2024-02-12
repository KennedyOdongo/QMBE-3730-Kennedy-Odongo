#This is my R script. I am going to use it for data analysis

#install.packages("ggplot2")

library(ggplot2)
library(tidyr)
library(collections)



x<- list(1,2,3)
x

my_name<-"Kennedy"
class(my_name)


five<-as.integer(5.5)
class(five)

x1=list(1,2,3)
x1

append(x,4)
x


my_function <- function() { # create a function with the name my_function
  print("Hello World!")
}

my_function()

my_function <- function(fname) {
  paste(fname, "Griffin")
}


data<-read.csv("C:/Users/rodge/Downloads/2019 Data.csv")
data

read.csv()
