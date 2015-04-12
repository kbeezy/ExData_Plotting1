#Get the data from the directory using read.csv() function
givendata <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", nrows=2075259)
givendata$Date <- as.Date(givendata$Date, format="%d/%m/%Y")

#Get the specific data which I will use for my graphs
mydata <- subset(givendata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
#View(mydata)

#Plot1
#use the hist() function for the first plot
hist(mydata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
#save the plot to my directory as a "plot1.png" file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
