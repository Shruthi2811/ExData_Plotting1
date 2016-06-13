# Reads the input data
household_power_consumption <- read.csv("S:/Coursera/EDA/household_power_consumption.csv", sep=";",stringsAsFactors=FALSE, dec=".")
#splitting the data to get dates
householddata <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
#converting character to date
householddata$Date <- as.Date(householddata$Date, format = "%d/%m/%Y")
#combining date and time variable
householddata$DateTime <- as.POSIXct(paste(householddata$Date, householddata$Time))
#creating a canvas
png("plot2.png", width = 480, height = 480)
#converting global active power to numeric
globalActivePower <- as.numeric(householddata$Global_active_power)
#plotting the data
plot(householddata$DateTime, globalActivePower, type="l",xlab="", ylab= "Global Active Power(kilowatts)")


