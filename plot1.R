# Exploratory Data analysis - Week 1 - Project

# Scrit for the first plot of the assignment
# Read file, transform to table and subset the dates of interest
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetDate <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Building plot and generating png file
gap <- as.numeric(subSetDate$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
