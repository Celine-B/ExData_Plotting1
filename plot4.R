# Exploratory Data analysis - Week 1 - Project

# Scrit for the fourth plot of the assignment
# Read file, transform to table and subset the dates of interest
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetDate <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Converting the Date and Time variables to Date/Time classes
datetime <- strptime(paste(subSetDate$Date, subSetDate$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetDate$Global_active_power)
globalReactivePower <- as.numeric(subSetDate$Global_reactive_power)
voltage <- as.numeric(subSetDate$Voltage)
subMetering1 <- as.numeric(subSetDate$Sub_metering_1)
subMetering2 <- as.numeric(subSetDate$Sub_metering_2)
subMetering3 <- as.numeric(subSetDate$Sub_metering_3)

# Building plot and generating png file
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

# plot for top left
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

# plot for top right
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

# plot for bottom left
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

# plot for bottom right
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()