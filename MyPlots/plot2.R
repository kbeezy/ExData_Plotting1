#Plot 2
#Merge Date and Time using paste() function
datetime <- paste(as.Date(mydata$Date), mydata$Time)
#converting date_and_time into calendar dates and times using as.POSIXct() function
mydata$datetime <- as.POSIXct(datetime)
#View(mydata)
#use plot() function to create the plot
plot(mydata$Global_active_power~mydata$datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
#save the plot as a "plot2.png" file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
