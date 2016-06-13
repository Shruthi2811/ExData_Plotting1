# Reads the input data
household_power_consumption <- read.csv("S:/Coursera/EDA/household_power_consumption.csv", sep=";",stringsAsFactors=FALSE, dec=".")
#splitting the data to get dates
householddata <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
#converting character to date
householddata$Date <- as.Date(householddata$Date, format = "%d/%m/%Y")
#combining date and time variable
householddata$DateTime <- as.POSIXct(paste(householddata$Date, householddata$Time))
png("plot3.png", width = 480, height = 480)
plot(householddata$DateTime, householddata$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="")
lines(householddata$DateTime, householddata$Sub_metering_2, type="l", col="red")
lines(householddata$DateTime, householddata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()
  
  