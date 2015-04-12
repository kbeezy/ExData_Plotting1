#Plot 3
#use plot(), lines(), legend() functions to plot the required graph with lines and legends
plot(mydata$Sub_metering_1~mydata$datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
lines(mydata$Sub_metering_2~mydata$datetime,col='Red')
lines(mydata$Sub_metering_3~mydata$datetime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#save the plot as a "plot3.png" file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
