household_power_consumption <- read.csv("S:/Coursera/EDA/household_power_consumption.csv", sep=";",stringsAsFactors=FALSE, dec=".")
colnames(household_power_consumption)
png("plot1.png", width=480, height=480)
globalActivePower <- as.numeric(household_power_consumption$Global_active_power)
subSetData <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
hist(globalActivePower, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
