# Read in Data
mobile_phone_prices<-read.csv("C:/Users/rodge/OneDrive/Desktop/QMBE 3730 Kennedy Odongo/QMBE-3730-Kennedy-Odongo/mobile_phone_prices.csv")

#Visualizations in R
# Basic using the plot function
# https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/plot 


#syntax
#plot(column)
#plot(x, y)

#main() argument
#The main title is added using the main option in the plot function. 
#The font, color, and size can be customized using the font.main, col.main and cex.main respectively.

#xlab(), ylab() argument
#The titles for the axes are provided using xlab and ylab attributes.
#These can be customized using font.lab, col.lab and cex.lab .


#You can also add some extra text inside the plot using the text attribute, 
#specifying the text to use and the coordinates to display.
#The text attribute can also be used to label the data points.
#The text, in this case, is a vector of labels instead of a string.

#legend()
#The legend can be added to a graph using the R’s legend() function.
#Legend takes as input the coordinates, text and the symbols to be interpreted.

plot

plot(mobile_phone_prices$px_height)
# type argument allows you to change the type of graph: scatter, line plot

plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,type = 'p', main = "Title", xlab = "phone height",ylab = "phone width")

plot(mobile_phone_prices$px_height,mobile_phone_prices$px_height, type = "l")

# Change symbols and colors
plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,pch=c(4,5,6),col=c('red','blue','violet','green'))

plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,type = 'p', main = "Title", xlab = "phone height",ylab = "phone width")


#R also allows combining multiple graphs into a 
#single image for our viewing convenience using the par() function

#Set a plotting window with one row and two columns.
par(mfrow=c(1,2)) #1 row, 2 columns
plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,type='l')
plot(mobile_phone_prices$px_height,mobile_phone_prices$px_width,pch=c(4,5,6),col=c('red','blue','violet','green'))



library(ggplot2)
